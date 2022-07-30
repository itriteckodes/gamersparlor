import 'package:flutter/material.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            TopBarMenu(menu: false,showtext: true,text: 'Settings',),
            SizedBox(height: 10,),
              Container(
                color: Colors.grey,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Personal details',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  selected: false,
                  onTap: () {},
                ),
              ),
              Container(
                color: Colors.grey,
                child: Divider(
                  height: 5,
                  color: BLACK,
                ),
              ),
              Container(
                color: Colors.grey,

                child: ListTile(
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
                  onTap: () {},
                ),
              ),
              Container(
                color: Colors.grey,

                child: Divider(
                  height: 5,
                  color: BLACK,
                ),
              ),
              Container(
                color: Colors.grey,

                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                      Text(
                        'Subscription',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  selected: false,
                  onTap: () {},
                ),
              ),
              Container(
                color: Colors.grey,
                
                child: Divider(
                  height: 5,
                  color: BLACK,
                ),
              ),
          ],
        ),
      )),
    );
  }
}
