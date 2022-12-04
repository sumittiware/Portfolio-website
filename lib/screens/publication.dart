import 'package:flutter/material.dart';
import 'package:web_app/data/profile.dart';
import 'package:web_app/models/project.dart';
import 'package:web_app/models/publications.dart';
import 'package:web_app/components/articleCard.dart';
import 'package:web_app/base_components/heading.dart';
import 'package:web_app/components/projectCard.dart';

class PublicationScreen extends StatefulWidget {
  @override
  _PublicationScreenState createState() => _PublicationScreenState();
}

class _PublicationScreenState extends State<PublicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget.h1(
          title: "Portfolio",
        ),
        SizedBox(
          height: 16,
        ),
        HeaderWidget.h2(
          title: "Projects",
        ),
        SizedBox(
          height: 16,
        ),
        Wrap(
          children: List.generate(
            projects.length,
            (index) => ProjectCard(
              project: projects[index],
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        HeaderWidget.h2(
          title: "Articles",
        ),
        SizedBox(
          height: 16,
        ),
        Wrap(
          children: List.generate(
            articles.length,
            (index) => ArticleCard(
              article: articles[index],
            ),
          ),
        )
      ],
    );
  }
}