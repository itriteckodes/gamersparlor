import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class IconButtonCustom extends StatelessWidget {
  const IconButtonCustom({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.color = MAIN_COLOR,
  }) : super(key: key);
  final onPressed;
  final icon;
  final color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 55,
        height: 55,
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
          ],
        ),
      ),
    );
  }
}
