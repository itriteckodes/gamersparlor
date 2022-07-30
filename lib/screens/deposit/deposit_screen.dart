// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamersparlor/screens/deposit/pay_card.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class DepositScreen extends StatefulWidget {
  DepositScreen({Key? key}) : super(key: key);

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            TopBarMenu(
              notify: false,
              showtext: false,
              text: '',
              menu: false,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deposit',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(color: BLUE, fontSize: 16),
                          ),
                          Text(
                            'Lounge Credits',
                            style: TextStyle(color: BLUE, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                          color: GREY,
                          fontSize: 34,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            '\$0.00',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Balance',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.13,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    BUTTON_BLUE,
                    MAIN_COLOR,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 3.0],
                  tileMode: TileMode.clamp,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Gamers Parlor ',
                                style: TextStyle(
                                    color: WHITE,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Plus ',
                                style: TextStyle(
                                  color: WHITE,
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(
                                FontAwesomeIcons.crosshairs,
                                color: Blue_accent,
                                size: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                'Priority customer support',
                                style: TextStyle(
                                  color: WHITE,
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Icon(
                          FontAwesomeIcons.gifts,
                          color: Blue_accent,
                          size: 50,
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            PayCard(
              time: '',
              trial: '',
              price: '10.00',
              color: WHITE,
            ),
            SizedBox(
              height: 10,
            ),
            PayCard(
              time: '',
              trial: '',
              price: '25.00',
              badge: true,
              color: Colors.deepPurple,
              textColor: WHITE,
            ),
            SizedBox(
              height: 10,
            ),
            PayCard(
              time: '',
              trial: '',
              price: '50.00',
              color: WHITE,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deposit \$50 or more to play in'),
                        Text('\$10 matches instantly'),
                      ],
                    ),
                    Text(
                      '\$25.00',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 0.9,
                color: Colors.blue,
              ),
            ),
            LargeButton(title: 'Continue', onPressed: () {},),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text('\$10 minimum deposit'),
            )
          ],
        ),
      )),
    );
  }
}
