// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/values/size.dart';


class SearchInput extends StatelessWidget {
  const SearchInput({Key? key, required this.controller, required this.title, this.obscure = false, this.function})
      : super(key: key);

  final controller;
  final String title;
  final bool obscure;
  final function;
  @override
  Widget build(BuildContext context) {

    var border = OutlineInputBorder(
      borderSide: BorderSide(color:  MAIN_COLOR, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(30),
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 55,
      child: TextField(
        onChanged: (value) => function(value),
        controller: controller,
        obscureText: obscure,
        style: TextStyle(fontSize: FONT_FIVE, color:  MAIN_COLOR),
        cursorColor: HINT_GREY,
        cursorHeight: 25,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
                     suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                            Icons.search,
                            color: MAIN_COLOR,
                            size: 32,
                          ),
                  ),
            filled: true,
            fillColor: INPUT_GREY,
            focusedBorder: border,
            enabledBorder: border,
            errorBorder: border,
            disabledBorder: border,
            contentPadding: EdgeInsets.only(left: 15),
            hintText: title,
            hintStyle: TextStyle( color:   MAIN_COLOR, fontSize: 18)),
      ),
    );
  }
}
