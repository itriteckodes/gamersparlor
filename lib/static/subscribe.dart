// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({
    Key? key,
    @required this.title,
    @required this.onPressed,
    @required this.color,
  }) : super(key: key);
  final title;
  final onPressed;
  final color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              SkyBlue,
              SkyBlue,
           
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 3.0],
            tileMode: TileMode.clamp,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: BTN_SHADOW.withOpacity(0.6),
          //     spreadRadius: 1,
          //     blurRadius: 10,
          //     offset: Offset(0, 2), // changes position of shadow
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: color),
            ),
          ],
        ),
      ),
    );
  }
}
