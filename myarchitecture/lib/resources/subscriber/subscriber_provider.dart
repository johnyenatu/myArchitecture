import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myarchitecture/models/subscriber.dart';
class SubscriberProvider {

  Future<void> loginUser(String title,String name) async {
    final http.Response response = await http.post(
      'https://api.iscorejobs.com/tAdmin/add',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'user_name': title,
        'password':name
      }),
    );

    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }

}