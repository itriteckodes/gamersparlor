// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/values/size.dart';


class LargeIconButton extends StatelessWidget {
  const LargeIconButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      @required this.onTap,
      this.text,
      this.icon,
      this.sreenRatio = 0.9,
      this.color = Colors.pink})
      : super(key: key);

  final title;
  final onPressed;
  final onTap;
  final sreenRatio;
  final color;
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: WHITE,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "    ",
              style: TextStyle(
                fontSize: FONT_SEVEN,
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: FONT_SEVEN,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {
               
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: GREY),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    icon,
                    size: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
