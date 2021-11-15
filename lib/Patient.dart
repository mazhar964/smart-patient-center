import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientcare/alarmdetail.dart';
import 'package:http/http.dart' as http;
import 'Model/Singlepatientmodel.dart';
import 'Model/Singlepatientmodel.dart';

class Patient extends StatefulWidget {

  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {


  @override
  void initState() {
    super.initState();
    getpatient(context);

  }
  Future<dynamic> getpatient(BuildContext context) async {
    final response = await http.get(
      Uri.parse('http://18.234.202.188/nursing/web/api/v1/patients/050A7C3D-469A-4518-841E-561327838054'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Authorization":"Bearer 9f67923bb8ab6c8dfafa3a382862b8f9"
      },
    );

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
     singlepatientmodel  = singlepatientmodelFromJson(response.body);
      print(singlepatientmodel.room);
    });
  }
  Singlepatientmodel singlepatientmodel;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Patient",
          style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
            fontSize: 17,),


        ),
        backgroundColor: Colors.white,

      ),
      body:   singlepatientmodel ==null? Center( child:CircularProgressIndicator()):Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.all(25),

                height:100,
                width: 360,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text('Patient Name',
                                  style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                    fontSize: 13,),
                                ),
                                Spacer(),
                                Text('Alarms',style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                  fontSize: 13,),),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all( 06.0),
                            child: Row(
                              children: [
                                Text('${singlepatientmodel?.firstName}', style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                                  fontSize: 12,),

                                ),
                                Spacer(),
                                Text('${singlepatientmodel.activeAlarmCount}', style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                                  fontSize: 13,),

                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all( 06.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Room Number',
                                        style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                          fontSize: 13,),
                                      ),
                                      Spacer(),
                                      Text('Status',style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                        fontSize: 13,),),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top:10.0),
                                    child: Row(
                                      children: [
                                        Text('${singlepatientmodel.room.number}', style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                                          fontSize: 12,),

                                        ),
                                        Spacer(),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          margin: const EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color:Color(0xffF8CECC),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                // margin: EdgeInsets.all(25),

                height:100,
                width: 360,
                color: Colors.white,
                // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                //width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text('Patient Name',
                                  style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                    fontSize: 13,),
                                ),
                                Spacer(),
                                Text('Alarms',style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                  fontSize: 13,),),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all( 06.0),
                            child: Row(
                              children: [
                                Text('Jony Blake', style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                                  fontSize: 12,),

                                ),
                                Spacer(),
                                Text('12', style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                                  fontSize: 13,),

                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all( 06.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Room Number',
                                        style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                          fontSize: 13,),
                                      ),
                                      Spacer(),
                                      Text('Status',style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                                        fontSize: 13,),),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top:10.0),
                                    child: Row(
                                      children: [
                                        Text('${singlepatientmodel.room.number}', style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                                          fontSize: 12,),

                                        ),
                                        Spacer(),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          margin: const EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color:Color(0xffD5E8D4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
