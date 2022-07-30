class Game {
  int? id;
  String? name;
  
  Game(game) {
    id = game['id'];
    name = game['title'];
  }
}