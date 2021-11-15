import 'package:flutter/cupertino.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;


  UnbordingContent({ this.title,  this.discription,  this.image,});
}

List<UnbordingContent> contents = [
  UnbordingContent(


    title:  "Patient  Care app \n "
        "     welcome!",
      discription: '   Lorem ipsum dolor sit amet \n'
          ' consetetur sadipscing elitr, sed',
    image: 'assets/Doctor.png',

  ),
  UnbordingContent(
      title:
        "       Get Online \n Medical Assistant",

      discription: "   Lorem ipsum dolor sit amet,"
         " \n consetetur sadipscing elitr, sed",
    image: 'assets/Group 623.png',
  ),

];