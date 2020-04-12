import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sourceapp/funny_app/views_model/login_model.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<LoginModel>(
        create: (context) => LoginModel(),
        lazy: false,
        child: _LoginView(),
      ),
    );
  }
}
 class _LoginView extends StatefulWidget {
   @override
   __LoginViewState createState() => __LoginViewState();
 }

 class __LoginViewState extends State<_LoginView> {
   //TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
   final emailView = TextEditingController();
   final passView = TextEditingController();
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailView.addListener((){
      LoginModel.of(context).emailSink.add(emailView.text);
    });
    passView.addListener((){
      LoginModel.of(context).passSink.add(passView.text);
    });
  }

   @override
   Widget build(BuildContext context) {
     var loginModel = LoginModel.of(context);

     final emailField = StreamBuilder<String>(
         stream: loginModel.emailStream,
         builder: (context, snapshot) {
           return TextField(
             controller: emailView,
             obscureText: false,
             //style: style,
             decoration: InputDecoration(
                 contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                 hintText: "Email",
                 errorText: snapshot.data,
                 border:
                 OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
           );
         }
     );
     final passwordField = StreamBuilder<String>(
       stream: loginModel.passStream,
       builder: (context,snapshot){
         return TextField(
           obscureText: true,
           //style: style,
           controller: passView,
           decoration: InputDecoration(
               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
               hintText: "Password",
               errorText: snapshot.data,
               border:
               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
         );
       },
     );

     final loginButon = StreamBuilder<bool>(
       stream: loginModel.btnStream,
       builder: (context,snapshot){
         return Material(
           elevation: 5.0,
           borderRadius: BorderRadius.circular(30.0),
           color: Color(0xff01A0C7),
           child: MaterialButton(
             minWidth: MediaQuery.of(context).size.width,
             padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
             onPressed: snapshot.data == true ?() {
               print('object');
             }:null,
             child: Text("Login",
               textAlign: TextAlign.center,
               //style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)
             ),
           ),
         );
       },
     );


     return  Center(
         child:Container(

            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   emailField,
                   SizedBox(
                     height: 10,
                   ),
                   passwordField,
                   SizedBox(
                     height: 10,
                   ),
                   loginButon
             ],

           ),
         ),
         ),
       );

   }

 }
