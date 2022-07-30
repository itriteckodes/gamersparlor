import 'package:flutter/material.dart';
import 'package:gamersparlor/static/datetime_picker.dart';
import 'package:gamersparlor/static/input_field.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/small_button.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class PersonalDetailScreen extends StatelessWidget {
  const PersonalDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG_GREY,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 15, left: 8),
              color: WHITE,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: BLACK,
                      ),
                    ),
                    Text(
                      'Personal Details',
                      style: TextStyle(
                          color: BLACK,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '',
                      style: TextStyle(
                          color: BLACK,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 23),
              child: Text(
                "Personal Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            InputField(
              title: 'Firstname',
              hint: 'Enter your firstname',
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              title: 'Lastname',
              hint: 'Enter your lastname',
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              title: 'Email Adress',
              hint: 'Enter your email adress',
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              title: 'Username',
              hint: 'Enter your username',
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              title: 'State/Province',
              hint: 'Enter your state/province',
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              title: 'ZIP Code',
              hint: 'Enter your zip code',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Center(child: SmallButton(title: 'Submit', onPressed: () {})),
              ],)
            ),
             SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
