import 'package:flutter/material.dart';
import 'package:patientcare/Model/patientuid.dart';
import 'alarmdetail.dart';
class AlarmScheduleList extends StatelessWidget {
  final Patient patientData;
  final Function onpress;
  AlarmScheduleList({this.patientData,this.onpress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpress,
      child: Container(

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 21,
                width: 21,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Color(0xffF8CECC),
                ),
              ),
            ),
            Flexible(
              child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                        Text(patientData.elapsedTime.text),
                        Spacer(),
                        Text('${patientData?.patient?.firstName??"nul"} (Room ${patientData.room.number})'),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Text('Type: ${patientData.type.text}'),
                        Spacer(),
                        Text('at risk',style: TextStyle(color: Colors.red),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}