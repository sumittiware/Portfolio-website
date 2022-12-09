import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/data/profile.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/responsive.dart';
import 'package:web_app/utils/images_utils.dart';

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
              backgroundImage: AssetImage(
                ImagesUtils.getActualPath('profile/profile.jpeg'),
              ),
            ),
            SizedBox(
              width: deviceSize.width * 0.05,
            ),
            _detail()
          ],
        ),
        smallScreen: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  ImagesUtils.getActualPath('profile/profile.jpeg'),
                ),
              ),
              SizedBox(
                height: deviceSize.width * 0.05,
              ),
              _detail()
            ],
          ),
        ),
      ),
    );
  }

  Widget _detail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: (ResponsiveWidget.isLargeScreen(context))
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          'I\'m Sumit Tiware',
          style: TextStyle(
            fontSize: 20,
            color: DarkColors.heading,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'I\'m Flutter & Android Developer',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: DarkColors.heading,
          ),
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
        _buildSocialButton(
          FontAwesomeIcons.twitter,
          profile['twitter'],
        ),
        SizedBox(
          width: 8,
        ),
        _buildSocialButton(
          FontAwesomeIcons.github,
          profile['github'],
        ),
        SizedBox(
          width: 8,
        ),
        _buildSocialButton(
          FontAwesomeIcons.instagram,
          profile['instagram'],
        ),
        SizedBox(
          width: 8,
        ),
        _buildSocialButton(
          FontAwesomeIcons.linkedinIn,
          profile['linkedin'],
        )
      ],
    );
  }

  _buildSocialButton(
    IconData icon,
    String url,
  ) {
    return CircleAvatar(
      backgroundColor: StyleColors.pink,
      child: IconButton(
        hoverColor: StyleColors.pink.withOpacity(0.2),
        icon: Icon(
          icon,
          color: DarkColors.heading,
        ),
        onPressed: () {
          launchUrl(
            Uri.parse(
              url,
            ),
          );
        },
      ),
    );
  }
}
