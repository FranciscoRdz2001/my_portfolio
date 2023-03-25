import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';

class LanguagesStatsWidget extends StatelessWidget {
  const LanguagesStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    return Container(
      height: resp.hp(30),
      color: Colors.black,
      alignment: Alignment.center,
      child: const Text('Stats', style: TextStyle(color: Colors.white)),
    );
  }
}
