import 'package:flutter/material.dart';
// import 'package:gamersparlor/static/outline_button.dart';
import 'package:gamersparlor/values/colors.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(color: BLACKISH),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 32,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        child: FadeInImage(
                          placeholder: AssetImage('assets/images/user.png'),
                          image: AssetImage('assets/images/user.png'),
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: BLUISH_BUTTON,
                          ),
                          decoration: BoxDecoration(
                              // color: BLUE,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: BLUISH_BUTTON,
                                width: 2.0,
                              )),
                        ))
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text("User name"),
              ],
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "person_info");
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.0,
                    color: BLUE,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Text(
                  'Edit',
                  style: TextStyle(color: BLUE),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
