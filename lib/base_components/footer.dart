import 'package:flutter/material.dart';
import 'package:web_app/base_components/contactdetail.dart';
import 'package:web_app/data/profile.dart';
import 'package:web_app/responsive.dart';

import '../utils/colors.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      color: StyleColors.pink,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ResponsiveWidget(
                largeScreen: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContactDetail(
                        iconData: Icons.call_rounded,
                        title: "Call Me On",
                        content: profile['phone']),
                    ContactDetail(
                      iconData: Icons.location_on_rounded,
                      title: "Home",
                      content: profile['address'],
                    ),
                    ContactDetail(
                      iconData: Icons.email_rounded,
                      title: "Email",
                      content: profile['email'],
                    ),
                  ],
                ),
                smallScreen: Column(
                  children: [
                    ContactDetail(
                      iconData: Icons.call_rounded,
                      title: "Call Me On",
                      content: profile['phone'],
                    ),
                    ContactDetail(
                      iconData: Icons.location_on_rounded,
                      title: "Home",
                      content: profile['address'],
                    ),
                    ContactDetail(
                      iconData: Icons.email_rounded,
                      title: "Email",
                      content: profile['email'],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 12,
          ),
          Text(
            "Made by Sumit Tiware with Flutter 2.0",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
