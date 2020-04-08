import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewSate extends StatefulWidget {
  @override
  _HomeViewSateState createState() => _HomeViewSateState();
}

class _HomeViewSateState extends State<HomeViewSate> {
  final String name = 'Gia Loc';
  final DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.image),
                        title: Text(name),
                        subtitle: Text('01/01/2020')
                    ),
                    //Divider(color: Colors.blue,),
                    Container(
                      child: Text('''Animations fall into one of two categories: tween- or physics-based. The following sections explain what these terms mean, and point you to resources where you can learn more. In some cases, the best documentation we currently have is example code in the Flutter gallery.

'''),
                    )

                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}




class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return HomeViewSate();
  }
}
