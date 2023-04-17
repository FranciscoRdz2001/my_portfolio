import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/widgets/github_profile_widget.dart';

import '../../../widgets/project_card_widget.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GithubProfileWidget(),
        const SizedBox(width: 25),
        Row(
          children: const [
            ProjectCardWidget(),
            SizedBox(width: 25),
            ProjectCardWidget(),
          ],
        )
      ],
    );
  }
}
