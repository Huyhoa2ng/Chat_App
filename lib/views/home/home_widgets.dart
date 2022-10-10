import 'package:flutter/material.dart';
import 'package:clone_whatsapp/constants/colors.dart';

//Story category
class addStoryWidget extends StatelessWidget {
  double size;
  IconData iconData;
  String text;
  //Constructors
  addStoryWidget(
      {required double this.size, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [greengradient.lightShade, greengradient.darkShade]),
          ),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(color: grayColor.lightShade),
        )
      ],
    );
  }
}

//Ava chatter

class storyWidget extends StatelessWidget {
  double size;
  String? imageUrl;
  String? text;
  bool showGreenstrip;
  storyWidget(
      {required this.size,
      this.imageUrl,
      this.text,
      required this.showGreenstrip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: showGreenstrip
                    ? Border.all(color: greenColor, width: 2)
                    : null),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(2.8),
                child: Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(imageUrl!), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            text!,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
