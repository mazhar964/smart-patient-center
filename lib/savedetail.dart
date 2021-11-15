import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Model/patientuid.dart';
import 'reusable.dart';

class savedetail extends StatefulWidget {

  @override
  _savedetailState createState() => _savedetailState();
}

class _savedetailState extends State<savedetail> {
  Color b = const Color(0xff1D3557);
  @override
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

                icon:Icons.person_outline,text:'Name' ,text1: 'Joe Doe',

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left:15,),
              child:   reuseable(icon:Icons.date_range,text:'Date/Time' ,text1: '12/12/2021, 12:00 PM',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left:15,),
              child:   reuseable(icon:Icons.airline_seat_individual_suite,text:'Room No.' ,text1: '202',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left:15,),
              child:   reuseable(icon:Icons.flag,text:'Status' ,text1: 'Open',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left:15,),
              child:   reuseable(icon:Icons.notifications_none,text:'Alarm Type' ,text1: 'Fall',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left:15,),
              child:   reuseable(icon:Icons.warning_amber_sharp,text:'Severity' ,text1: 'High',),
            ),

          ],

        ),
      ),
    );

  }
}


