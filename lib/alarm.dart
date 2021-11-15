import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patientcare/Setting.dart';
import 'package:patientcare/call.dart';
import 'Patient.dart';
import 'alarmschedulelist.dart';
import 'alarmdetail.dart';
import 'AlarmScreen.dart';


void main() {
  runApp(MaterialApp(
   // title: "Alarms",
    home: alarm(),
  ));
}

class alarm extends StatefulWidget {
  @override
  _alarmState createState() => _alarmState();
}

class _alarmState extends State<alarm> {
  int _selectedIndex = 0;
  List<Widget> _screens = [ AlarmScreen(),Patient(),/*Container(
    color: Colors.red,)*/call(),SettingScreen()];
  @override
  Color e =  Color(0xffB1B1B1);
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          setState(() => _selectedIndex = i);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon:Icon(Icons.alarm,color:Color(0xff457B9D),),

            label: '',
          ),

          BottomNavigationBarItem(

            icon: ImageIcon(
              AssetImage('assets/wheelchair.png'),color:Color(0xffB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/exchange.png'),color:Color(0xffB1B1B1),
            ),

            label: '',
          ),
          BottomNavigationBarItem(
            
            icon:Icon(Icons.mobile_friendly_outlined,color: Color(0xffB1B1B1),),
            label: '',
          ),
        ],
      ),
      body: _screens[_selectedIndex],

    );
  }
}


