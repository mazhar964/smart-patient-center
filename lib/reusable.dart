import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api.dart';
import 'alarmschedulelist.dart';
class reuseable extends StatelessWidget {


  reuseable({
    this.icon, this.text, this.text1
});
  final IconData icon;
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(15.0)
      ),
      height: 54,
      width: 360,
      child:Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundColor:Color(0XFFF1FAEE),
                radius: 18,
                child: Icon(icon,/*color:Color(0xffF1FAEE)*/)),
          ),
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(

                padding: const EdgeInsets.only( top: 4.0),
                child: Text(text ,style: TextStyle(color: Color(0xffB1B1B1,),fontFamily: 'fontNamebold',
                  fontSize: 13,),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(text1,style: TextStyle(color: Color(0xff1D3557,),fontFamily: 'fontNamebold',
                  fontSize: 12,),),
              ),

            ],
          ),


        ],

      ),





    );
  }
}
