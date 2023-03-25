import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    return Container(
      color: Colors.indigo,
      height: 700,
      alignment: Alignment.topCenter,
      child: const Text(
        'Projects',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
