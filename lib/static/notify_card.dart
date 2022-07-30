// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class NotifyCard extends StatelessWidget {
  const NotifyCard({Key? key,  this.color, this.title, this.ontap})
      : super(key: key);
 
  final color;
  final title;
  final ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(

        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              color: WHITE,
              borderRadius: BorderRadius.circular(10),
                boxShadow: [
            BoxShadow(
              color: GREY,
              spreadRadius: 0.2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.money,color: GREEN,),
                          SizedBox(width: 5,),
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                            ),

                          ),
                        ],
                      ),
                  
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
        ],
      ),
    );
  }
}
