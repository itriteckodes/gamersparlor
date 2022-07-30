import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
    this.color = MAIN_COLOR,
  }) : super(key: key);
  final onPressed;
  final text;
  final icon;
  final color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(top:8,bottom: 8,right: 12,left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
             icon,
              color: WHITE,
              size: 28,
            ),
            Text(text,style: TextStyle(color: WHITE,fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
