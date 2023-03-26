import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';
import 'package:my_portfolio/widgets/animated_vertical_divider_widget.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';
import 'package:my_portfolio/widgets/title_chip_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    final parentKey = GlobalKey();

    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 1000,
            minHeight: 350,
          ),
          child: SizedBox(
            height: resp.hp(50),
            child: ResponsiveWidget(
              phoneWidget: Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: const Text('Picture'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    child: const Text('Name\nMobile dev'),
                  ),
                ],
              ),
              largeDeviceWidget: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TitleChipWidget(title: 'Information'),
                        SizedBox(height: resp.hp(2.5)),
                        Row(
                          children: [
                            const SizedBox(width: 70),
                            AnimatedVerticalDividerWidget(parentKey: parentKey),
                            SizedBox(width: resp.wp(2.5)),
                            Flexible(
                              child: RichText(
                                key: parentKey,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                text: TextSpan(
                                  text: "Hello, i'm",
                                  style: styles.w400(18, lightGreyColor),
                                  children: [
                                    TextSpan(
                                      text: '\nFrancisco Rodríguez',
                                      style: styles.w500(40, Colors.white),
                                    ),
                                    TextSpan(
                                      text: '\na',
                                      style: styles.w400(18, lightGreyColor),
                                    ),
                                    TextSpan(
                                      text: ' Mobile Developer',
                                      style: styles.w500(25, accentColor),
                                    ),
                                    TextSpan(
                                      text: ' from México',
                                      style: styles.w400(18, lightGreyColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: resp.wp(10)),
                  Expanded(
                    child: Image.asset(
                      'assets/images/animated_splash.gif',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
