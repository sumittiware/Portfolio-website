import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/models/publications.dart';
import 'package:web_app/utils/colors.dart';

class ArticleCard extends StatelessWidget {
  final Publication article;
  ArticleCard({this.article});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(20),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: DarkColors.heading),
          ),
          Text(
            article.publisher,
            style: TextStyle(color: DarkColors.text),
          ),
          Container(
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
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse(article.link),
                );
              },
              child: Text(
                'Read',
                style: TextStyle(
                  color: StyleColors.pink,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
