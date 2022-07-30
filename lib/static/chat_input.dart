import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';


class ChatInputField extends StatelessWidget {
  const ChatInputField({Key? key, this.controller}) : super(key: key);

  final controller;
  
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 15, color: BLACK),
        cursorColor: Colors.black,
        keyboardType: TextInputType.name,
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(15),
            ),
          ),
          filled: true,
          fillColor: MAIN_COLOR,
          // focusedBorder: InputBorder.none,
          // enabledBorder: InputBorder.none,
          // errorBorder: InputBorder.none,
          // disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(left:12, bottom: 8, top: 8, right: 8),
          hintText: "Enter message",
        ),
      ),
    );
  }
}
