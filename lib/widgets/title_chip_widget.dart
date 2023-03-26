import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';

import '../app/constants/colors_constants.dart';

class TitleChipWidget extends StatelessWidget {
  final String title;
  const TitleChipWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final styles = TextStyles.of(context);
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [accentColor, darkAccent]),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: darkBackgroundColor,
        ),
        child: Text(
          title,
          style: styles.w400(18),
        ),
      ),
    );
  }
}
