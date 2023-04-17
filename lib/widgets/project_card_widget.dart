import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = TextStyles.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 250),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/projects_previews/ubipet_preview.png'),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: darkContColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('UbiPet', style: styles.w500(20, lightGreyColor)),
                const SizedBox(height: 10),
                Text(
                  'Application to locate, report or adopt animals.',
                  style: styles.w400(14, greyColor),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 9),
                      decoration: BoxDecoration(
                        color: darkContColor,
                        border: Border.all(color: darkAccent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'View details',
                        style: styles.w400(12, lightGreyColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
