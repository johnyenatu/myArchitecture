import 'dart:convert';

class User {
  final int id;
  final String username;
  final String password;
  User({this.id, this.username,this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['admin_id'],
      username: json['user_name'],
      password: json['password'],
    );
  }
}