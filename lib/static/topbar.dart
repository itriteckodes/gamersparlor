// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamersparlor/values/colors.dart';
// import 'package:gamersparlor/values/colors.dart';

class TopBarMenu extends StatefulWidget {
  TopBarMenu({Key? key, this.notify = false,this.menu = true, this.ontap,this.showtext = false,this.text}) : super(key: key);
  bool notify;
  bool menu;
  bool showtext;
  final ontap;
  final text;
  @override
  State<TopBarMenu> createState() => _TopBarMenuState();
}

class _TopBarMenuState extends State<TopBarMenu> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only( bottom: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if(widget.menu == true )
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: widget.ontap,
                      child: Icon(
                        Icons.menu,
                        color:Blue_accent,
                        size: 28,
                      ),
                    ),
                  )
                  else 
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,'home');
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Blue_accent,
                        size: 28,
                      ),
                    ),
                  ),
                  if(widget.notify)
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap:(){},
                      child: Icon(
                        FontAwesomeIcons.solidPaperPlane,
                        color: Blue_accent,
                        size: 20,
                      ),
                    ),
                  ),
                  
                ],
              ),
             if(widget.showtext)
                 Text( widget.text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                 Icon(
                        FontAwesomeIcons.solidPaperPlane,
                        color: Colors.transparent,
                        size: 30,
                      ),
            ],
          ),
        ),
        Divider(
          height: 5,
          thickness: 1.5,
        )
      ],
    );
  }
}
