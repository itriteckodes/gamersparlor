import 'package:flutter/material.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/screens/tournaments/tournament_listcard.dart';
import 'package:gamersparlor/static/topbar.dart';

class TournamentListScreen extends StatefulWidget {
  TournamentListScreen({Key? key,required this.tournaments}) : super(key: key);
  final List<Tournament> tournaments;
  @override
  State<TournamentListScreen> createState() => _TournamentListScreen(tournaments);
}

class _TournamentListScreen extends State<TournamentListScreen> {
  _TournamentListScreen(this.tournaments);
  final List<Tournament> tournaments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            TopBarMenu(
              menu: false,
              showtext: true,
              text: 'Tournaments',
            ),
            SizedBox(
              height: 20,
            ),
            for (var tournament in tournaments) ...[
              TournamentListCard(
                tournament: tournament,
              ),
              SizedBox(
                height: 10,
              ),
            ]
          ],
        ),
      )),
    );
  }
}
