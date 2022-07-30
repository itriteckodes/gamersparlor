import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class FollowerDetail extends StatelessWidget {
  const FollowerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return   Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 1.0, color: BLACKISH),
              )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 5),
                child: Row(
                  // mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Matches"),
                          Column(
                            children: [
                              Text("0"),
                              Text("Followers"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("0"),
                              Text("Following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
             
  }
}
