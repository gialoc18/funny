import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sourceapp/funny_app/views/navigation/animated_buttom/favorite/favorite_view.dart';
import 'package:sourceapp/funny_app/views/navigation/animated_buttom/refresh_btn.dart';
import 'package:sourceapp/funny_app/views/navigation/animated_buttom/settings/settings_view.dart';

class FancyFab extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  FancyFab({this.onPressed, this.tooltip, this.icon});

  @override
  _FancyFabState createState() => _FancyFabState();
}

class _FancyFabState extends State<FancyFab>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  initState() {
    _animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget favorite() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'favorite',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoriteView()),
          );
        },
        tooltip: 'Add',
        child: Icon(Icons.favorite,),
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'image',
        onPressed: (){
          Navigator.pushNamed(context, '/profile');
        },
//        onPressed: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => ProfileView()),
//          );
//        },
        tooltip: 'Image',
        child: Icon(Icons.person),
      ),
    );
  }

  Widget settings() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'settings',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingView()),
          );
        },
        tooltip: 'Inbox',
        child: Icon(Icons.settings),
      ),
    );
  }

  Widget toggle() {
    return Container(
        child: Stack(
          children: <Widget>[
            RefreshBtn(),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                heroTag: 'toggle',
                backgroundColor: _buttonColor.value,
                onPressed: animate,
                tooltip: 'Toggle',
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: _animateIcon,
                ),
               ),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 3.0,
            0.0,
          ),
          child: favorite(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 2.0,
            0.0,
          ),
          child: image(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value,
            0.0,
          ),
          child: settings(),
        ),
        toggle(),
      ],
    );
  }
}