import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class PayCard extends StatefulWidget {
  PayCard(
      {Key? key,
      this.value,
      this.groupvalue,
      this.onchaged,
      this.time,
      this.trial,
      this.textColor =BLACK,
      this.price,this.color,this.badge = false})
      : super(key: key);
  final value;
  final groupvalue;
  final onchaged;
  final time;
  final trial;
  final price;
  final color;
  final textColor;
  bool badge;
  @override
  State<PayCard> createState() => _PayCardState();
}

class _PayCardState extends State<PayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: SUBTITLE_GREY, width: 0.5)),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.price,
                style: TextStyle(
                    color: widget.textColor, fontSize: 26.0, fontWeight: FontWeight.w900),
              ),
              Row(
                children: [
                  widget.badge == true?
                  Badge(
                    borderRadius: BorderRadius.circular(5),
                    shape: BadgeShape.square,
                    badgeColor: Colors.white,
                    badgeContent: Text(
                      'Most Popular',
                      style: TextStyle(fontSize: 15, color: Colors.deepPurple,fontWeight:FontWeight.bold ),
                    ),
                  ):SizedBox(),
                  Radio(
                    value: widget.value,
                    groupValue: widget.groupvalue,
                    activeColor: MAIN_COLOR,
                    fillColor: MaterialStateColor.resolveWith((states) => widget.textColor),
                    onChanged: widget.onchaged,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
