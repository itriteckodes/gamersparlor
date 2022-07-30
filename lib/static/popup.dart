// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_field, curly_braces_in_flow_control_structures, avoid_print, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key, this.text}) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    // var border = OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(30));
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: BLUE,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:6.0,right:6.0 ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: WHITE),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
