import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientcare/Model/patientuid.dart';
import 'package:patientcare/alarmdetail.dart';
import 'alarm.dart';
import 'alarmschedulelist.dart';

class AlarmScreen extends StatefulWidget {
  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {

  @override
  void initState() {
super.initState();
getdata(context);

  }


  Future<dynamic> getdata(BuildContext context) async {

    final response = await http.get(
      Uri.parse('http://18.234.202.188/nursing/web/api/v1/alarms'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Authorization":"Bearer 9f67923bb8ab6c8dfafa3a382862b8f9"
      },

    );
    print("-------------------------------");
    print(response.statusCode);
    if (response.statusCode != 200) {
      showDialog(
        context: context,
        builder: (BuildContext context) {

          return AlertDialog(
            title: Text('Error message'),
            content: Text('test'),
            actions: [
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'),

              ),

            ],
          );
        },
      );
      /*ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("invalid user "),),);*/

      return;
    }
    print('response ok ${response.body}');
    setState(() {
      patient= patientFromJson((response.body));
      print(patient.length);
    });

  }
  List<Patient> patient;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Alarms",
          style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
            fontSize: 17,),


        ),
        backgroundColor: Colors.white,

      ),

 body: patient==null? Center( child:CircularProgressIndicator()):  Container(
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      child: ListView.builder(
      itemCount:patient.length ,
        itemBuilder: (context, i) => AlarmScheduleList(patientData: patient[i],onpress: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => alarmdetail(patientData:patient[i] ,),
            ),
          );
        },),




        ),

       ),
    );

  }

}
