import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:patientcare/Model/GetToken.dart';

import '../alarm.dart';
import '../call.dart';

class ApiClass
{
  Future<dynamic> loginUser({String email, String password,BuildContext context}) async {
   // email="marek@luceon.us";
    //password="admin";
    final response = await http.post(
      Uri.parse('http://18.234.202.188/nursing/web/api/v1/auth/token'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password':password,
      }),
    );
   // print(response);
    if (response.statusCode != 200) {

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: Text('Error message'),
              content: Text('invalid email or password'),
              actions: [
                FlatButton(
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'),

                ),

              ],
            ),

          );
        },
      );
      /*ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("invalid user "),),);*/

      return;
    }  print('response ok');
    User.fromJson(jsonDecode(response.body));

    Navigator.pushReplacement(

      context,
      MaterialPageRoute(
        builder: (context) => alarm(),
      ),
    );




  }

}