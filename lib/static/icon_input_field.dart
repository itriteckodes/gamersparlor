// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_new

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';


class IconInputField extends StatelessWidget {
  const IconInputField(
      {Key? key,
      this.controller,
      @required this.title,
      this.hint,
      this.text,
      this.obscure = false,
      this.ontap})
      : super(key: key);

  final controller;
  final title;
  final obscure;
  final hint;
  final text;
  final ontap;
  @override
  Widget build(BuildContext context) {

    var border = OutlineInputBorder(
      borderSide: BorderSide(color: GREY, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15),
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: BLUE,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 45,
            child: TextField(
              controller: controller,
              obscureText: obscure,
              onTap: ontap,
              style:
                  TextStyle(fontSize: 14, color: GREY, fontFamily: 'Poppins'),
              cursorColor: Colors.black,
              keyboardType: TextInputType.name,
              decoration: new InputDecoration(
                
                filled: true,
                fillColor:GREY,
                focusedBorder: border,
                enabledBorder: border,
                errorBorder: border,
                disabledBorder: border,
                // label: title,
                contentPadding: EdgeInsets.only(left: 20),
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
