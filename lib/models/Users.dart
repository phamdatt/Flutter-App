class Users {
  final String login;
  final int id;
  final String node_id;
  const Users({required this.login, required this.id, required this.node_id});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        id: json["id"], login: json["login"], node_id: json["node_id"]);
  }
}

Users users = Users(login: "0", id: 11111, node_id: "MDQ6VXNlcjE0MDgyMwss==");
