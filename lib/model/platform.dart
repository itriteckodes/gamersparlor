class Platform {
  int? id;
  String? title;
  
  Platform(platform) {
    id = platform['id'];
    title = platform['title'];
  }
}