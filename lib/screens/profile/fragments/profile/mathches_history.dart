import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class MatchDetail extends StatelessWidget {
  const MatchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1.0, color: BLACKISH),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(13.0, 20.0, 0.0, 0.0),
            child: Column(
              children: [
                Text(
                  "Match History",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    PopupMenuButton(
                      initialValue: 2,
                      child: Center(child: Text('Fortnite ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      )),
                      itemBuilder: (context) {
                        return List.generate(5, (index) {
                          return PopupMenuItem(
                            value: index,
                            child: Text('Match $index'),
                          );
                        });
                      },
                    ),
                    Icon(Icons.arrow_drop_down_rounded,
                    size: 20,
                    )
                  ],
                ),
              
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 0.0),
            child:Row(
                  children: [
                    PopupMenuButton(
                      initialValue: 2,
                      child: Center(child: Text('Matches',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      )),
                      itemBuilder: (context) {
                        return List.generate(5, (index) {
                          return PopupMenuItem(
                            value: index,
                            child: Text('Match $index'),
                          );
                        });
                      },
                    ),
                    Icon(Icons.arrow_drop_down_rounded,
                    size: 20,
                    )
                  ],
                ),
              
          ),
        ],
      ),
    );
  }
}
