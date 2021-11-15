import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patientcare/signup.dart';
import 'package:patientcare/spleshscreen.dart';

import 'UnbordingContent.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

//List<UnbordingContent> slides = new List<UnbordingContent>();


class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  Color t = const Color(0xff070707);
  Color d = const Color(0xff457B9D);
  int pageIndex = 0;
  int currentIndex = 0;
  PageController _controller;
  List<UnbordingContent> listcontents = [];
  @override
  void initState() {
    // TODO: implement initState
    listcontents = contents;
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SvgPicture.asset(
                'assets/Logo.svg',
                height: 75.86,
                width: 75.86,
              ),
            ),
            Text(
              listcontents[pageIndex].title,
              style: TextStyle(
                color: t,
                fontFamily: 'fontNamebold',
                fontSize: 21,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                listcontents[pageIndex].discription,
                style: TextStyle(
                  color: d,
                  fontFamily: 'fontNamebold',
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: PageView.builder(
                  itemCount: listcontents.length,
                  onPageChanged: (index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  itemBuilder: (_, i) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Text(" consetetur sadipscing elitr, sed"),

                          Image.asset(
                            listcontents[i].image,
                            height: 295,
                            width: 196,
                          ),
                        ]);
                  }),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  listcontents.length,

                  (index) => dotgenrate( index,),
                ),
              ),
            ),

          /*  Container(
              height: 20,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              color: Colors.green,
              child: FlatButton(
                child: Text(
                    currentIndex == listcontents.length - 1 ? "Continue": "Next"),
                onPressed: (){
                  if(currentIndex == listcontents.length - 1){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> screen()),
                    );
                  }
                  _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
                },
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),

            ),*/
            Container(
              margin: EdgeInsets.all(30.0),
              height: 55,
              width: 312,
              child: FlatButton(
                color:c,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "GET STARTED",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {

                    Navigator.pushReplacement
                      (
                      context,
                      MaterialPageRoute(
                        builder: (context) => screen(),
                      ),
                    );
                  },

              ),
            ),
            const Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Already have an account ',
                      style: TextStyle(
                          color: Color(0xffB1B1B1),
                          fontFamily: 'fontNamebold',
                          fontSize: 13)),
                  TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                          color: Color(0xff1D3557),
                          fontFamily: 'fontNamebold',
                          fontSize: 13)),
                ],
              ),
            ), /*RichText(text:
            Text('Already have an account? Sign In')
          */
          ],
        ),
      ),
    );
  }

  Container dotgenrate(int index,  ) {
    return Container(

                  height: 10,
                  width:currentIndex == index ? 25 : 10,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(



                       color: currentIndex== index??Colors.red,
                      borderRadius: BorderRadius.circular(10)),

                );
  }
}
