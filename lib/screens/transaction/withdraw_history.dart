import 'package:flutter/material.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/values/colors.dart';
class WithdrawHistory extends StatefulWidget {
  WithdrawHistory({Key? key}) : super(key: key);

  @override
  State<WithdrawHistory> createState() => _WithdrawHistoryState();
}

class _WithdrawHistoryState extends State<WithdrawHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Withdrawal History',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          RoundedButton(title: 'Withdraw', onPressed: (){}, color: WHITE),
          RoundedButton(title: 'Add Funds', onPressed: (){},color: WHITE,)
        ],)
      ]),
    );
  }
}