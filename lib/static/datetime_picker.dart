import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class Datetime extends StatelessWidget {
  const Datetime({Key? key,this.val,this.controller,this.onchange}) : super(key: key);
  final val;
  final controller;
  final onchange;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Age',
              style: TextStyle(
                  fontSize: 15, color: BLACK, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: GREY.withOpacity(0.15),
                ),
                BoxShadow(
                  color: WHITE,
                  spreadRadius: -2.0,
                  // blurRadius: isDark ? 0.0:5.0,
                ),
              ],
            ),
            child: DateTimePicker(
              type: DateTimePickerType.date,
              decoration: InputDecoration(
              focusedBorder: InputBorder.none, border: InputBorder.none),
              dateMask: 'd MMM, yyyy',
              controller: controller,
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(2000),
              showCursor: false,
              lastDate: DateTime(2100),
              selectableDayPredicate: (date) {
                if (date.weekday == 6 || date.weekday == 7) {
                  return false;
                }
                return true;
              },
              onChanged: (val) => onchange(val),
              validator: (val) {
                print(val);
                return null;
              },
               onSaved: (val) => print(val),
            ),
          ),
        ],
      ),
    ));
  }
}
