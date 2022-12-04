import 'package:flutter/material.dart';
import 'package:web_app/models/experience.dart';
import 'package:web_app/responsive.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;
  const ExperienceCard({
    Key key,
    this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    experience.role,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  |  ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    experience.company,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              if (!isSmallScreen)
                Text(
                  experience.time,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
            ],
          ),
          ...List.generate(
            experience.work.length,
            (index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "• ${experience.work[index]}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
