import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';
import 'package:my_portfolio/widgets/animated_vertical_divider_widget.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';
import 'package:my_portfolio/widgets/title_chip_widget.dart';

import '../../../app/utils/responsive_util.dart';
import '../../../app/utils/text_styles_util.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    final rowKey = GlobalKey();
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 500,
        minHeight: 250,
      ),
      child: ResponsiveWidget(
        phoneWidget: Column(
          children: [
            const Expanded(
              child: Align(child: Text('Picture')),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              child: const Text('Info'),
            ),
          ],
        ),
        largeDeviceWidget: Row(
          children: [
            Expanded(
              child: Container(
                color: darkContColor,
              ),
            ),
            SizedBox(width: resp.wp(10)),
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TitleChipWidget(title: 'About me'),
                    SizedBox(height: resp.hp(2.5)),
                    Row(
                      key: rowKey,
                      children: [
                        const SizedBox(width: 60),
                        AnimatedVerticalDividerWidget(parentKey: rowKey),
                        SizedBox(width: resp.wp(2.5)),
                        Expanded(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            text: TextSpan(
                              text:
                                  "I am a student of the 8th semester of the career computer systems engineering focused on ",
                              style: styles.w400(18, lightGreyColor),
                              children: [
                                TextSpan(
                                  text: 'mobile development ',
                                  style: styles.w500(18, accentColor),
                                ),
                                TextSpan(
                                  text: 'for more 3 years old with the',
                                  style: styles.w400(18, lightGreyColor),
                                ),
                                TextSpan(
                                  text: ' Dart',
                                  style:
                                      styles.w500(18, const Color(0xff00b6aa)),
                                ),
                                TextSpan(
                                  text: ' programming language and the ',
                                  style: styles.w400(18, lightGreyColor),
                                ),
                                TextSpan(
                                  text: 'Flutter ',
                                  style: styles.w500(18, Colors.blue),
                                ),
                                TextSpan(
                                  text: 'framework.',
                                  style: styles.w400(18, lightGreyColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
