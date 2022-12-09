import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/components/experience_card.dart';
import 'package:web_app/data/profile.dart';
import 'package:web_app/models/education.dart';
import 'package:web_app/models/experience.dart';
import 'package:web_app/models/skills&tools.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/enum.dart';
import 'package:web_app/components/education_card.dart';
import 'package:web_app/base_components/heading.dart';
import 'package:web_app/components/skillwidget.dart';
import 'package:web_app/responsive.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget.h1(
          title: "About Me",
        ),
        SizedBox(
          height: 8,
        ),
        _buildAboutMe(),
        SizedBox(
          height: 16,
        ),
        _buildSkillsAndTools(),
        SizedBox(
          height: 16,
        ),
        _buildExperienceSection(),
        SizedBox(
          height: 16,
        ),
        _buildEducationSection(),
      ],
    );
  }

  Widget _buildAboutMe() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "I'm Sumit Tiware and I'm a ",
            style: TextStyle(
                fontSize: 18, color: DarkColors.text, fontFamily: "Montserrat"),
            children: <TextSpan>[
              TextSpan(
                text: "Flutter & Android Developer",
                style: TextStyle(
                  fontSize: 18,
                  color: StyleColors.pink,
                  fontFamily: "Montserrat",
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          profile['description'],
          style: TextStyle(color: DarkColors.text),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(
              Uri.parse(
                profile['resume'],
              ),
            );
          },
          child: Text("Download Resume"),
          style: ElevatedButton.styleFrom(
            primary: StyleColors.pink,
            elevation: 0,
            padding: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _buildSkillsAndTools() {
    return ResponsiveWidget(
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSection(
            title: "My Skills",
            widgets: List.generate(
              skills.length,
              (index) => SkillWidget(
                skill: skills[index],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          _buildSection(
            title: "Tools",
            widgets: List.generate(
              tools.length,
              (index) => ToolWidget(
                tool: tools[index],
              ),
            ),
          ),
        ],
      ),
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _buildSection(
              title: "My Skills",
              widgets: List.generate(
                skills.length,
                (index) => SkillWidget(
                  skill: skills[index],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: _buildSection(
              title: "Tools",
              widgets: List.generate(
                tools.length,
                (index) => ToolWidget(
                  tool: tools[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    String title,
    List<Widget> widgets,
  }) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: DarkColors.heading.withOpacity(0.4),
        gradient: LinearGradient(
          colors: [
            DarkColors.heading.withOpacity(0.3),
            DarkColors.heading.withOpacity(0.6)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget.h2(
            title: title,
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: widgets,
          ),
        ],
      ),
    );
  }

  Widget _buildEducationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget.h2(
          title: "Education",
        ),
        SizedBox(
          height: 10,
        ),
        Timeline.tileBuilder(
          physics: NeverScrollableScrollPhysics(),
          theme: TimelineThemeData(
            nodePosition: 0,
            color: StyleColors.pink,
          ),
          shrinkWrap: true,
          builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) => EducationCard(
              education: educations[index],
            ),
            itemCount: 3,
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget.h2(
          title: "Experience",
        ),
        SizedBox(
          height: 10,
        ),
        Timeline.tileBuilder(
          physics: NeverScrollableScrollPhysics(),
          theme: TimelineThemeData(
            nodePosition: 0,
            color: StyleColors.pink,
          ),
          shrinkWrap: true,
          builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) => ExperienceCard(
              experience: experiences[index],
            ),
            itemCount: experiences.length,
          ),
        ),
      ],
    );
  }
}
