import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Model/GetToken.dart';
import 'alarm.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'api/api.dart';

class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

Color c = const Color(0xff1D3557);
Color d = const Color(0xff457B9D);

class _screenState extends State<screen> {
  bool _isObscure = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

      body: ApiClass ==null? Center( child:CircularProgressIndicator()):Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(03.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: SvgPicture.asset(
                    'assets/Logo.svg',
                    height: 82.72,
                    width: 82.72,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    '     Sign up to \n Patient Care App',
                    style: TextStyle(
                        color: c, fontWeight: FontWeight.bold, fontSize: 29),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Email'),
                      ),
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5),
                        // add padding to adjust text

                        //isDense: true,

                        hintText: "mazhar43gd@gmail.com",

                        prefixIcon: Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          // add padding to adjust icon

                          child: Icon(Icons.person_outline),
                        ),

                        //labelText:("Email"),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Password'),
                    ),
                    TextField(
                    controller: passwordController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5.0),
                        // add padding to adjust text

                        //isDense: true,

                        hintText: "strong password here ",

                        prefixIcon: Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          // add padding to adjust icon

                          child: Icon(Icons.lock_open_outlined),
                        ),

                        //labelText:("password"),

                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.check_box),
                      Text("rember me "),
Spacer(),
                      Text("Frogoton password?"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(08.0),
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    height: 55,
                    width: 312,
                    child: FlatButton(
                      color: d,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        ApiClass().loginUser(email: emailController.text,password: passwordController.text,context: context);

                      },
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text('-Or Scan your Fingerprint'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SvgPicture.asset(
                          'assets/Button.svg',

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
