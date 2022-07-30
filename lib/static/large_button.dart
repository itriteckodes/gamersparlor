// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';


class LargeButton extends StatelessWidget {
  const  LargeButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.sreenRatio = 0.7,
      this.color = BUTTON_BLUE})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * sreenRatio,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: WHITE,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(title,
            style: TextStyle(
                fontSize: 18,
                ),),
      ),
    );
  }
}
