import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_app/data/profile.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/responsive.dart';
import 'package:web_app/base_components/heading.dart';
import 'package:http/http.dart' as http;

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool _sending = false;

  final _nameController = TextEditingController();
  final _emailCntroller = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  _sendMessage() async {
    if (_nameController.text == null ||
        _emailCntroller.text == null ||
        _subjectController.text == null ||
        _messageController.text == null) {
      return;
    }

    setState(() {
      _sending = true;
    });

    final url = Uri.parse(
      msg_link,
    );
    final response = await http.post(url,
        body: json.encode({
          "name": _nameController.text,
          "email": _emailCntroller.text,
          "subject": _subjectController.text,
          "message": _messageController.text
        }));
    if (response.statusCode == 200) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Message send!!"),
              actions: [
                TextButton(
                  child: Text("Okay"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            );
          });
      setState(() {
        _nameController.clear();
        _subjectController.clear();
        _emailCntroller.clear();
        _messageController.clear();
      });
    } else {
      print("Failed!!");
    }

    setState(() {
      _sending = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeaderWidget.h1(
          title: 'Contact Me',
        ),
        SizedBox(
          height: 30,
        ),
        ResponsiveWidget(
          largeScreen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "svg/contactme.svg",
                width: 300,
              ),
              _form(deviceSize)
            ],
          ),
          smallScreen: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "svg/contactme.svg",
                width: 300,
              ),
              _form(deviceSize)
            ],
          ),
        )
      ],
    );
  }

  _form(Size deviceSize) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: DarkColors.heading),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: StyleColors.pink),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(),
                labelText: "Name*",
                labelStyle: TextStyle(color: DarkColors.heading)),
          ),
          SizedBox(height: 30),
          TextField(
            controller: _emailCntroller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: DarkColors.heading),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: StyleColors.pink),
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "Email*",
              labelStyle: TextStyle(color: DarkColors.heading),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            controller: _subjectController,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: DarkColors.heading),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: StyleColors.pink),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Subject*",
                labelStyle: TextStyle(color: DarkColors.heading)),
          ),
          SizedBox(height: 30),
          TextField(
            controller: _messageController,
            maxLines: 4,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: DarkColors.heading),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: StyleColors.pink),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "your message*",
                labelStyle: TextStyle(color: DarkColors.heading)),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: deviceSize.width * 0.2,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                _sendMessage();
              },
              child: (!_sending)
                  ? Text('Submit')
                  : CircularProgressIndicator(
                      color: Colors.white,
                    ),
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: StyleColors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
