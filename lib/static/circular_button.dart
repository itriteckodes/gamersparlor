

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/values/size.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key? key, @required this.onTap, this.image, this.icon, this.colorInvert = false, this.transparent=false}) : super(key: key);

  final onTap;
  final  image;
  final  icon;
  final bool colorInvert;
  final bool transparent;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: image != null
          ? Image(
              image: image,
              height: 15,
              width: 15,
            )
          : Icon(icon, size: FONT_FOUR,color: MAIN_COLOR,),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        elevation: 5,
        shadowColor: transparent?Colors.transparent:BLACK,
        padding: EdgeInsets.all(image != null ? 13 : 8),
        primary: transparent?Colors.transparent:colorInvert ? MAIN_COLOR : WHITE,
        onPrimary: transparent?Colors.transparent:colorInvert ? WHITE : MAIN_COLOR,
      ),
    );
  }
}
