// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.sreenRatio = 0.5,
      this.color = BUTTON_BLUE})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(  width: MediaQuery.of(context).size.width * 0.7,
      height: 45,
      child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [BROWNISSH,YELLOW],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 40.0),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

