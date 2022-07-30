// import 'package:agriguru/values/colors.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/profile/profile_screen.dart';
import 'package:gamersparlor/screens/support/support_screen.dart';
import 'package:gamersparlor/screens/video/upload_screen.dart';
import 'package:gamersparlor/static/gradient_button.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:get/get.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  bool isSwitched = false;
  void toggleswitch(bool value) {
    setState(() {
      isSwitched == true ? isSwitched = false : isSwitched = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(45)),
                                  child: FadeInImage(
                                    placeholder: AssetImage('assets/images/1.jpg'),
                                    image: AssetImage('assets/images/1.jpg'),
                                    fit: BoxFit.fill,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "user",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "17.00",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "|",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "00",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Blue_accent,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      LargeButton(title: 'Add Funds', onPressed: () {}, color: GREEN),
                      SizedBox(
                        height: 8,
                      ),
                      GradientButton(title: 'Subscribe to GP+', onPressed: () {})
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Open to Challange",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Switch(
                          value: false,
                          onChanged: (bool? value) {},
                          activeTrackColor: Blue_accent,
                          activeColor: PURPLE,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                //  height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.home,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.person_rounded,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'My Profile',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {
                  Get.to(() => ProfileScreen());
                  //  Navigator.pushNamed(context,'profile');
                },
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.settings,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Account Setting',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.card_giftcard_outlined,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Withdraw',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.restore_rounded,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction History',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {
                  Navigator.pushNamed(context, 'transaction');
                },
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.bakery_dining_outlined,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Live Help',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.support,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Support',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {
                  Get.to(() => SupportScreen());
                },
              ), 
              Divider(
                height: 10,
                color: Blue_accent,
              ),ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.video_collection,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Upload Video',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {
                  Get.to(() => UploadScreen());
                },
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.thumb_up,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Leave Review',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Blue_accent,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.content_paste_go_rounded,
                    color: Blue_accent,
                    size: 25,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Log Out',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                selected: false,
                onTap: () {},
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Terms of Service|Privacy Policy",
                          style: TextStyle(
                            color: Blue_accent,
                          ),
                        ),
                        Text(
                          "Version 2.10.3",
                          style: TextStyle(
                            color: Blue_accent,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
