import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshBtn extends StatefulWidget {
  @override
  _RefreshBtnState createState() => _RefreshBtnState();
}

class _RefreshBtnState extends State<RefreshBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left:31),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: FloatingActionButton(
          //onPressed: picker,
          child: Icon(Icons.refresh), onPressed: () {},),
      ),
    );
  }
}
