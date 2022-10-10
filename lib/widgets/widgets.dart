import 'package:flutter/material.dart';
import 'package:clone_whatsapp/constants/colors.dart';

class messagelistTitle extends StatelessWidget {
  // String urlImage;
  // String title;
  // String subtitle;
  // String timeframe;

  messagelistTitle(
      {required BuildContext context,
      required this.urlImage,
      required this.title,
      required this.subtitle,
      required this.timeframe,
      this.messageCounter});

  String urlImage;
  String title;
  String subtitle;
  String timeframe;
  int? messageCounter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: greenColor, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage('$urlImage'))),
              ),
              Positioned(
                  bottom: 4,
                  right: 4,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: greengradient.lightShade),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      Text(timeframe),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.black),
                      ),
                      messageCounter != null
                          ? Center(
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [
                                    greengradient.lightShade,
                                    greengradient.darkShade
                                  ]),
                                ),
                                child: Text(
                                  messageCounter.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
