import 'package:flutter/material.dart';
import 'package:gamersparlor/static/icon_button.dart';
import 'package:gamersparlor/static/text_icon_button.dart';
import 'package:gamersparlor/values/colors.dart';

class CreateMatch extends StatelessWidget {
  const CreateMatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonCustom(
          onPressed: () {},
          icon: Icons.edit,
          color: Colors.black54,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          // height: 80,
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.all(13.0),
          decoration: BoxDecoration(color: DARK_GREEN, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(fontSize: 16, color: BLUE),
                      ),
                      Text(
                        '10',
                        style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold, color: BLUE),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              SizedBox(width: 15,),
              Text(
                'Create a match',
                style: TextStyle(fontSize: 16, color: BLUE),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
