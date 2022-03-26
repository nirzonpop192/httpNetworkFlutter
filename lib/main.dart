import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:network/parsing/user.dart';
import 'dart:convert';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: fetchUser,
            child: Text('Show Flutter homepage'),
          ),
        ),
      ),
    )

  );
}
Future<User> fetchUser() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/users');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
      print("Nirzon ${User.fromJson(jsonDecode(response.body))}");
    return User.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
        getRespose() async {

            // to show json
         // var url = 'https://jsonplaceholder.typicode.com/photos';
                // to parse json
          var url = 'https://jsonplaceholder.typicode.com/users';
          // var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
          var response = await http.get(url);
          print('Response status: ${response.statusCode}');
          print('Response body: ${response.body}');

          //print(await http.read('https://example.com/foobar.txt'));
        }







