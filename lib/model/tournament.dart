import 'package:gamersparlor/model/game.dart';
import 'package:gamersparlor/model/platform.dart';

class Tournament {
  int? id;
  String? title;
  int? price;
  String? playersLimit;
  int? prize;
  String? rules;
  String? image;
  List<Platform> platforms = <Platform>[];
  String? game;

  Tournament(tournament) {
    id = tournament['id'];
    title = tournament['title'];
    price = tournament['price'];
    playersLimit = tournament['player_limit'];
    prize = tournament['prize'];
    image =  tournament['image'];
    game =  tournament['game']['title'];
    for(var platform in tournament['game']['platforms']){
      platforms.add(Platform(platform));
    }
  }
}