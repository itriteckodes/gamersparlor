import 'package:flutter/material.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/values/colors.dart';

class TransactionHistory extends StatefulWidget {
  TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Transaction History',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          RoundedButton(title: 'Deposit', onPressed: (){}, color: WHITE),
          RoundedButton(title: 'Add Funds', onPressed: (){},color: WHITE,)
        ],),
      ]),
    );
  }
}