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
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset('assets/images/CV.png'),
            ),
            SizedBox(width: resp.wp(10)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TitleChipWidget(title: 'About me'),
                  SizedBox(height: resp.hp(2.5)),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 700),
                    child: Row(
                      key: rowKey,
                      children: [
                        const SizedBox(width: 60),
                        AnimatedVerticalDividerWidget(parentKey: rowKey),
                        SizedBox(width: resp.wp(2.5)),
                        Flexible(
                          child: Column(
                            children: [
                              RichText(
                                overflow: TextOverflow.visible,
                                maxLines: 5,
                                text: TextSpan(
                                  text:
                                      "I am a student of the 8th semester of the career computer systems engineering focused on ",
                                  style: styles.w400(16, lightGreyColor),
                                  children: [
                                    TextSpan(
                                      text: 'mobile development ',
                                      style: styles.w500(16, accentColor),
                                    ),
                                    TextSpan(
                                      text: 'for more 3 years old with the',
                                      style: styles.w400(16, lightGreyColor),
                                    ),
                                    TextSpan(
                                      text: ' Dart',
                                      style: styles.w500(
                                        16,
                                        const Color(0xff00b6aa),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' programming language and the ',
                                      style: styles.w400(16, lightGreyColor),
                                    ),
                                    TextSpan(
                                      text: 'Flutter ',
                                      style: styles.w500(16, Colors.blue),
                                    ),
                                    TextSpan(
                                      text: 'framework.',
                                      style: styles.w400(16, lightGreyColor),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/mail.png',
                                    height: 30,
                                    width: 30,
                                    color: darkContChildColor,
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      'franciscojrdzrdz@gmail.com',
                                      style: styles.w400(14, lightGreyColor),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/github.png',
                                    height: 30,
                                    width: 30,
                                    color: darkContChildColor,
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      '@FranciscoRdz2001',
                                      style: styles.w400(14, lightGreyColor),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/linkedin.png',
                                    height: 30,
                                    width: 30,
                                    color: darkContChildColor,
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      '@frankrdz2001',
                                      style: styles.w400(14, lightGreyColor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
