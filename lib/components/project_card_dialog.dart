import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/models/project.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/base_components/heading.dart';
import 'package:web_app/models/publications.dart';

void showProjectCard(
  BuildContext context,
  Project project,
) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) {
      return Dialog(
        alignment: Alignment.center,
        backgroundColor: DarkColors.backgroundDark,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: 700,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeaderWidget.h2(
                      title: project.title,
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close_rounded),
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 8,
                ),
                ...List.generate(
                  project.description.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "• ${project.description[index]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: List.generate(
                    project.teckUsed.length,
                    (index) => Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: StyleColors.pink.withOpacity(
                          0.2,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Text(
                        project.teckUsed[index],
                        style: TextStyle(
                          color: StyleColors.pink,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    launchUrl(
                      Uri.parse(project.github),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: StyleColors.pink,
                      ),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Github',
                      style: TextStyle(
                        color: StyleColors.pink,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
