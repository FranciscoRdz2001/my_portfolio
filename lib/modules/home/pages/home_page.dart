import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/home/widgets/about_me_widget.dart';
import 'package:my_portfolio/modules/home/widgets/body_widget.dart';
import 'package:my_portfolio/modules/home/widgets/experience_widget.dart';
import 'package:my_portfolio/modules/home/widgets/header_widget.dart';
import 'package:my_portfolio/modules/home/widgets/languages_stats_widget.dart';
import 'package:my_portfolio/modules/home/widgets/projects_widget.dart';
import 'package:my_portfolio/widgets/made_with_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: const [
              SizedBox(height: 50),
              HeaderWidget(),
              SizedBox(height: 50),
              BodyWidget(),
              SizedBox(height: 100),
              AboutMeWidget(),
              SizedBox(height: 100),
              LanguagesStatsWidget(),
              SizedBox(height: 100),
              ExperienceWidget(),
              SizedBox(height: 100),
              ProjectsWidget(),
              SizedBox(height: 50),
              MadeWithWidget(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
