import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/home/widgets/about_me_widget.dart';
import 'package:my_portfolio/modules/home/widgets/body_widget.dart';
import 'package:my_portfolio/modules/home/widgets/header_widget.dart';
import 'package:my_portfolio/modules/home/widgets/languages_stats_widget.dart';
import 'package:my_portfolio/modules/home/widgets/projects_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderWidget(),
            SizedBox(height: 20),
            BodyWidget(),
            SizedBox(height: 20),
            AboutMeWidget(),
            SizedBox(height: 20),
            LanguagesStatsWidget(),
            SizedBox(height: 20),
            ProjectsWidget(),
          ],
        ),
      ),
    );
  }
}
