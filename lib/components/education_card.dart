import 'package:flutter/material.dart';
import 'package:web_app/models/education.dart';
import 'package:web_app/utils/colors.dart';

class EducationCard extends StatelessWidget {
  final Education education;
  EducationCard({this.education});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                education.institute,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: DarkColors.heading,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    education.degree,
                    style: TextStyle(
                      color: DarkColors.text,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    education.year,
                    style: TextStyle(
                      color: DarkColors.text,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    education.grade,
                    style: TextStyle(
                      color: DarkColors.text,
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
