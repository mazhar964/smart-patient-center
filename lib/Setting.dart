import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable.dart';
void main(){
  runApp(MaterialApp(
    home: SettingScreen(),
  ));

}
class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Color b = const Color(0xff1D3557);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          "About",
          style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
            fontSize: 17,),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
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
                    child: CircleAvatar(
                      backgroundColor:Color(0XFFF1FAEE),
                      radius: 18,
                      child: Icon(
                        Icons.lock_open_outlined,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Text("Change Password",
                    style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
                      fontSize: 12,),),



                ],

              ),





            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Container(
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
                      child: CircleAvatar(
                        backgroundColor:Color(0XFFF1FAEE),
                        radius: 18,
                        child: Icon(
                          Icons.person,
                          // color: Colors.green,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text("Contact Us",
                      style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
                        fontSize: 12,),),



                  ],

                ),





              ),
            ),
            Container(
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
                    child: CircleAvatar(
                      backgroundColor:Color(0XFFF1FAEE),
                      radius: 18,
                      child: Icon(
                        Icons.login_outlined,color: Colors.red,
                        // color: Colors.green,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Text("Logout",
                    style: TextStyle(color: Color(0xff2E3748,),fontFamily: 'fontNamebold',
                      fontSize: 13,),),



                ],

              ),





            ),
          ],
        ),
      ),


        );


  }
}


