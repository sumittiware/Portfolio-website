import 'package:flutter/material.dart';
import 'package:web_app/components/project_card_dialog.dart';
import 'package:web_app/models/project.dart';

import '../utils/colors.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  ProjectCard({this.project});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showProjectCard(
        context,
        project,
      ),
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                project.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: DarkColors.heading,
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(
                      project.asset,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
