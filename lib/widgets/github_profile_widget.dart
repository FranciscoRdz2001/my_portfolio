import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';

import '../app/utils/responsive_util.dart';
import '../app/utils/text_styles_util.dart';

class GithubProfileWidget extends StatelessWidget {
  const GithubProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 250),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: darkContColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/CV.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Francisco Rodríguez',
              style: styles.w500(20, lightGreyColor),
            ),
            Text(
              'FranciscoRdz2001',
              style: styles.w400(16, greyColor),
            ),
            const SizedBox(height: 10),
            Text(
              'Flutter Developer',
              style: styles.w400(14),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                    decoration: BoxDecoration(
                      color: darkContColor,
                      border: Border.all(color: darkAccent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Check profile',
                      style: styles.w400(12, lightGreyColor),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7.5),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: darkContColor,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7.5),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: lightGreyColor,
                  size: 16,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Tijuana, México',
                    style: styles.w400(12, lightGreyColor),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              'Archievements',
              style: styles.w500(16, lightGreyColor),
            ),
            const SizedBox(height: 15),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 170),
              child: Row(
                children: [
                  ...['pull-shark-default', 'quickdraw-default', 'yolo-default']
                      .map(
                    (e) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: e != 'yolo-default' ? 2.5 : 0),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/archievements/$e.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
