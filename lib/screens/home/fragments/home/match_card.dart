import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/static/icon_button.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/static/text_icon_button.dart';
import 'package:gamersparlor/values/colors.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.52,
          padding: EdgeInsets.all(13.0),
          decoration: BoxDecoration(color: DARK_GREEN, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Solo bet',
                    style: TextStyle(fontSize: 17, color: BLUE),
                  ),
                  Text(
                    "vs Player's Lounge",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: BLUE),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Badge(
                    borderRadius: BorderRadius.circular(5),
                    shape: BadgeShape.square,
                    badgeColor: Colors.purple,
                    badgeContent: Text(
                      'Twich Required',
                      style: TextStyle(fontSize: 13, color: WHITE),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Badge(
                    borderRadius: BorderRadius.circular(5),
                    shape: BadgeShape.square,
                    badgeColor: GREY,
                    badgeContent: Text(
                      '\$10 max',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButtonCustom(
              onPressed: () {},
              icon: Icons.edit,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            RoundedButton(
              title: 'Play Connect',
              onPressed: () {},
              color: WHITE,
              bg_color: Colors.black54,
            )
          ],
        )
      ],
    );
  }
}
