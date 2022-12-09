import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';

class HeaderWidget {
  static Widget h1({String title}) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: DarkColors.heading,
            ),
          ),
          Container(
            width: 50,
            height: 5,
            color: StyleColors.pink,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 20,
            height: 5,
            color: StyleColors.pink,
          ),
        ],
      ),
    );
  }

  static Widget h2({String title}) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: DarkColors.heading,
            ),
          ),
          Container(
            height: 4,
            width: 30,
            color: StyleColors.pink,
          )
        ],
      ),
    );
  }
}
