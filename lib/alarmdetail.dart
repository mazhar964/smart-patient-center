import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientcare/savedetail.dart';
import 'Model/patientuid.dart';
import 'reusable.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api.dart';
class alarmdetail extends StatefulWidget {
  final Patient patientData;
  alarmdetail({this.patientData});

  @override
  _alarmdetailState createState() => _alarmdetailState();
}

class _alarmdetailState extends State<alarmdetail> {


  Color b = const Color(0xff1D3557);

  @override

 // List<Patient> patient;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          "Alarms 123",
          style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
            fontSize: 17,),


        ),
        backgroundColor: Colors.white,
    leading: BackButton(

    color: Color(0xff000000),
      ),

      ),
body: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Column(
crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Padding(
        padding: const EdgeInsets.only(left: 15.0,top: 8,),
        child: Text('Alarm Details',
          style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
            fontSize: 16,),
        ),
      ),
Padding(
  padding: const EdgeInsets.only(top: 30.0,left:15,),
  child:reuseable(
    //
    icon:Icons.person_outline,text:'Name' ,text1:'${widget.patientData?.patient?.lastName}',
  ),
),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,left:15,),
        child:   reuseable(icon:Icons.date_range,text:'${widget.patientData?.elapsedTime}' ,text1:'${widget.patientData?.elapsedTime.text}'),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,left:15,),
        child:   reuseable(icon:Icons.airline_seat_individual_suite,text:'${widget.patientData.room.uuid}' ,text1: '${widget.patientData.room.number}',),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,left:15,),
        child:   reuseable(icon:Icons.flag,text:'${widget.patientData.status.internalCode}' ,text1: '${widget.patientData.status.text}',),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,left:15,),
        child:   reuseable(icon:Icons.notifications_none,text:'Alarm Type' ,text1: 'Fall',),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,left:15,),
        child:   reuseable(icon:Icons.warning_amber_sharp,text:'${widget.patientData.severity.internalCode}' ,text1: '${widget.patientData.severity.text}',),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Container(
            margin: EdgeInsets.all(30.0),
            height: 55,
            width: 312,
            child: FlatButton(
                color:Color(0xff459D50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "OWN the Alarm",
                style: TextStyle(color:Colors.white,fontFamily:'fontNamebold',fontSize: 13 ,),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => savedetail(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left:40,),
        child: Container(
          //margin: EdgeInsets.all(30.0),
          height: 55,
          width: 312,
          child: FlatButton(
            //color: b,
              color:Color(0xff457B9D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "CLOSE the Alarm",
              style: TextStyle(color:Colors.white,fontFamily:'fontNamebold',fontSize: 13 ,),
            ),
            onPressed: () {

            },
          ),
        ),
      ),
    ],

  ),
),
    );

  }
}


