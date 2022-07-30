class User {
  int? id;
  String? name;
  String? email;
  String? password;
  String? image;
  String? apiToken;

  User(user) {
    id = user['id'];
    name = user['name'];
    email = user['email'];
    password = user['password'];
    image = user['image'] ?? null;
    apiToken =  user['api_token'] ?? '';
  }
}