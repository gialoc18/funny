import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sourceapp/funny_app/globals/colors.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Đây là trang chi tiết'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/funny_images/avatardemo.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Text("Lee Min Hoo",
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ),
                    groupLikeShare(),
                  ],
                ),
              ),
              Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '+91 85465XXX8XX',
                      style:
                      TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                    ),
                  )),
              Card(
                color: Colors.white,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.cake,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '08-05-1995',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Neucha'),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  Widget _folow(int number,String title){
      return Column(
        children: <Widget>[
          Text("$number"),
          Text(title,style: TextStyle(fontSize: 13,color: clTextSummary),)
        ],
      );
  }

  Widget groupLikeShare(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _folow(5555, "Follow"),
        _folow(999, "Like"),
        _folow(12, "Share"),
      ],
    );
  }
}
