import 'package:flutter/material.dart';

class ContactDetail extends StatelessWidget {
  final iconData;
  final title;
  final content;
  ContactDetail({this.iconData, this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          content,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
