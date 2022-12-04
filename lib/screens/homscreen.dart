import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/data/profile.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/responsive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      height: deviceSize.height,
      child: ResponsiveWidget(
        largeScreen: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
            ),
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("profile/profile.jpeg"),
            ),
            SizedBox(
              width: deviceSize.width * 0.05,
            ),
            _detail()
          ],
        ),
        smallScreen: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("profile/profile.jpeg"),
            ),
            SizedBox(
              height: deviceSize.width * 0.05,
            ),
            _detail()
          ],
        ),
      ),
    );
  }

  _detail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: (ResponsiveWidget.isLargeScreen(context))
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          'I\'m Sumit Tiware',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: DarkColors.heading,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I\'m a ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: DarkColors.heading,
              ),
            ),
            Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  _writer("Flutter Developer"),
                  _writer("Android Developer"),
                  _writer("Programmer"),
                  _writer("Freelancer"),
                ],
                repeatForever: true,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        _buildSocialLinks(),
      ],
    );
  }

  Widget _buildSocialLinks() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: StyleColors.pink,
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.twitter,
              color: DarkColors.heading,
            ),
            onPressed: () {
              launchUrl(
                Uri.parse(
                  profile['twitter'],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
          backgroundColor: StyleColors.pink,
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.github,
              color: DarkColors.heading,
            ),
            onPressed: () {
              launchUrl(
                Uri.parse(
                  profile['github'],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
          backgroundColor: StyleColors.pink,
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.instagram,
              color: DarkColors.heading,
            ),
            onPressed: () {
              launchUrl(
                Uri.parse(
                  profile['instagram'],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
          backgroundColor: StyleColors.pink,
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.linkedinIn,
              color: DarkColors.heading,
            ),
            onPressed: () {
              launchUrl(
                Uri.parse(
                  profile['linkedin'],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  TypewriterAnimatedText _writer(String title) {
    return TypewriterAnimatedText(
      '$title !',
      textStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: StyleColors.pink,
      ),
      speed: const Duration(
        milliseconds: 100,
      ),
    );
  }
}
