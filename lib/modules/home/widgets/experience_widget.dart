import 'package:flutter/material.dart';

import '../../../app/constants/colors_constants.dart';
import '../../../app/utils/responsive_util.dart';
import '../../../app/utils/text_styles_util.dart';
import '../../../widgets/animated_vertical_divider_widget.dart';
import '../../../widgets/responsive_widget.dart';
import '../../../widgets/title_chip_widget.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    final parentKey = GlobalKey();

    return Column(
      children: [
        ResponsiveWidget(
          phoneWidget: Column(
            children: [],
          ),
          largeDeviceWidget: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TitleChipWidget(title: 'Experience'),
                    SizedBox(height: resp.hp(2.5)),
                    SingleChildScrollView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        key: parentKey,
                        children: [
                          const SizedBox(width: 70),
                          AnimatedVerticalDividerWidget(parentKey: parentKey),
                          SizedBox(width: resp.wp(2.5)),
                          ...List.generate(
                            5,
                            (x) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: darkContColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxWidth: 400),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            color: darkContColor,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/languages/dart.png',
                                            color: greenColor,
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Work Name',
                                                style: styles.w400(18),
                                              ),
                                              Text(
                                                'Enterprise name',
                                                style: styles.w400(
                                                  16,
                                                  lightGreyColor,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                'Details ' * 5,
                                                style: styles.w400(
                                                    16, lightGreyColor),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
