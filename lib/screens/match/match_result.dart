import 'package:flutter/material.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class MatchResult extends StatefulWidget {
  MatchResult({Key? key}) : super(key: key);

  @override
  State<MatchResult> createState() => _MatchResultState();
}

class _MatchResultState extends State<MatchResult> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: true,
      drawer: SideDrawer(),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            TopBarMenu(
              menu: true,
              notify: false,
              text: 'Match Result',
              showtext: true,
              ontap: openDrawer,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: DARK_GREEN,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Review your opponent's scores",
                    style: TextStyle(color: WHITE, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Scores auto confirms in",
                    style: TextStyle(color: WHITE, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: GREY,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      ' 15:00',
                      style: TextStyle(color: WHITE, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: MAIN_COLOR),
                              child: Center(
                                child: Text(
                                  '10',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'houdinidre',
                              style: TextStyle(color: WHITE, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RoundedButton(title: 'I won', onPressed: () {}, color: WHITE)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: MAIN_COLOR),
                              child: Center(
                                child: Text(
                                  '12',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'brooklynbred11',
                              style: TextStyle(color: WHITE, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RoundedButton(title: 'I lost', onPressed: () {}, color: WHITE)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Match issue?',
                    style: TextStyle(color: SkyBlue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
