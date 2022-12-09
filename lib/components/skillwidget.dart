import 'package:flutter/material.dart';
import 'package:web_app/models/skills&tools.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/images_utils.dart';

class SkillWidget extends StatelessWidget {
  final Skill skill;
  SkillWidget({this.skill});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            child: Image.asset(
              ImagesUtils.getActualPath('icons/${skill.image}.png'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            skill.skill,
            style: TextStyle(
              color: DarkColors.text,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}

class ToolWidget extends StatelessWidget {
  final Tool tool;
  ToolWidget({this.tool});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            child: Image.asset(
              ImagesUtils.getActualPath('icons/${tool.image}.png'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            tool.tool,
            style: TextStyle(
              color: DarkColors.text,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
