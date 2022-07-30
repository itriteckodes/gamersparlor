import 'package:flutter/material.dart';
import 'package:gamersparlor/helpers/auth.dart';
import 'package:gamersparlor/helpers/text.dart';
import 'package:gamersparlor/model/ticket.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/values/size.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({Key? key,@required this.ticket,this.onTap}) : super(key: key);

  final ticket;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         onTap(ticket);
      },
      child: Material(
        elevation: 10,
        shadowColor: MAIN_COLOR,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: WHITE),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(55)),
                          child: FadeInImage(
                            image: AssetImage('assets/images/ticket.png'),
                            placeholder: AssetImage('assets/images/loading.gif'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TextHelper.limited(ticket.subject, 18),
                              style: TextStyle(fontSize: FONT_SEVEN, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  TextHelper.limited(ticket.message, 20),
                                  style: TextStyle(fontSize: FONT_EIGHT, color: HINT_GREY),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket.lastSeen,
                            style: TextStyle(fontSize: FONT_EIGHT, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          // if (ticket.unReadCount > 0)
                          //   Container(
                          //     width: 20,
                          //     decoration: BoxDecoration(shape: BoxShape.circle, color: MAIN_COLOR),
                          //     child: Center(
                          //         child: Text(ticket.unReadCount.toString(),
                          //             style:
                          //                 TextStyle(fontSize: FONT_EIGHT, fontWeight: FontWeight.bold, color: WHITE))),
                          //   )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
