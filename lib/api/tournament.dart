import 'dart:developer';

import 'package:gamersparlor/api/api.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/values/constants.dart';

class TournamentApi {
  static get_tournament() async {
    var Url = BASE_URL + 'tournament';
    var data = {};
    var response = await Api.execute(url: Url, data: data);
    log(response.toString());
    if (!response['error']) {
      List<Tournament> tournaments = [];
      for (var tournament in response['tournaments']) {
        tournaments.add(Tournament(tournament));
      }
      return tournaments;
    } else {
      return false;
    }
  }
}
