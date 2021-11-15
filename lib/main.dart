import 'package:flutter/material.dart';
import 'package:patientcare/onbording.dart';
import 'package:patientcare/spleshscreen.dart';


void main() {
  runApp( MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
