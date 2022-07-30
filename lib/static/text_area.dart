// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_new, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gamersparlor/values/colors.dart';


class TextArea extends StatelessWidget {
  const TextArea(
      {Key? key,
      this.controller,
      @required this.title,
      this.hint,
      this.text,
      this.icon,
      this.color,
      this.obscure = false,
      this.ontap})
      : super(key: key);

  final controller;
  final title;
  final obscure;
  final hint;
  final text;
  final icon;
  final color;
  final ontap;
  @override
  Widget build(BuildContext context) {

    var border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15),
      ),
    );

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: GREY.withOpacity(0.15),width: 1.5)
            ),
            child: TextFormField(
              maxLines: 8,
              expands: false,
              controller: controller,
              obscureText: obscure,
              onTap: ontap,
              style: TextStyle(
                fontSize: 20,
                color: BLACK,
              ),
              
              cursorColor: Colors.black,
              keyboardType: TextInputType.name,
              decoration: new InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(icon,size: 14,),
                focusedBorder: border,
                enabledBorder: border,
                errorBorder: border,
                disabledBorder: border,
                contentPadding: EdgeInsets.all(10),
                hintText: title,
              ),
            ),
          
    );
  }
}

