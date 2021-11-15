import 'dart:async';
import 'package:flutter/material.dart';
import 'onbording.dart';
void main()
{
  runApp(MaterialApp(
    title: "Alarms",
    home: SplashScreen(),
  ));

}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Onbording(),),),);
  }
  Color b = const Color(0xff1D3557);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Image.asset('assets/Logo.png',
                width: 119.73,
                height: 119.73,


              ),


            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Text("Patient Care App",style: TextStyle(color:b,fontFamily:'fontNamebold',fontSize: 29 ,),),
          ),
        ],
      ),
    );
  }
}