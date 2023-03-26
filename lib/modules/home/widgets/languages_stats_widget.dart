import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/data/models/chart_data_model.dart';
import 'package:my_portfolio/data/models/chart_element_model.dart';
import 'package:my_portfolio/widgets/animated_circle_progress.dart';
import 'package:my_portfolio/widgets/animated_vertical_divider_widget.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';
import 'package:my_portfolio/widgets/title_chip_widget.dart';

class LanguagesStatsWidget extends StatelessWidget {
  const LanguagesStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final parentKey = GlobalKey();
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: ResponsiveWidget(
            phoneWidget: const SizedBox(),
            largeDeviceWidget: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleChipWidget(title: 'Programming languages'),
                      SizedBox(height: resp.hp(2.5)),
                      Row(
                        key: parentKey,
                        children: [
                          const SizedBox(width: 120),
                          AnimatedVerticalDividerWidget(parentKey: parentKey),
                          SizedBox(width: resp.wp(2.5)),
                          const Flexible(
                            child: AnimatedCircleProgressWidget(
                              elements: ChartElementsModel(
                                data: [
                                  ChartDataModel(
                                    name: 'Dart',
                                    percent: 95,
                                    color: greenColor,
                                  ),
                                  ChartDataModel(
                                    name: 'Python',
                                    percent: 50,
                                    color: redColor,
                                  ),
                                  ChartDataModel(
                                    name: 'Javascript',
                                    percent: 70,
                                    color: yellowColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleChipWidget(title: 'Frameworks'),
                      SizedBox(height: resp.hp(2.5)),
                      Row(
                        children: [
                          const SizedBox(width: 70),
                          AnimatedVerticalDividerWidget(parentKey: parentKey),
                          SizedBox(width: resp.wp(2.5)),
                          const Flexible(
                            child: AnimatedCircleProgressWidget(
                              elements: ChartElementsModel(
                                data: [
                                  ChartDataModel(
                                    name: 'Flutter',
                                    percent: 95,
                                    color: blueColor,
                                  ),
                                  ChartDataModel(
                                    name: 'Django',
                                    percent: 50,
                                    color: redColor,
                                  ),
                                  ChartDataModel(
                                    name: 'NestJS',
                                    percent: 70,
                                    color: yellowColor,
                                  ),
                                ],
                              ),
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
        ),
        SizedBox(height: resp.hp(10)),
        Row(
          children: [
            ...['flutter', 'js', 'dart', 'csharp', 'py'].map(
              (e) {
                return Expanded(
                  child: Image.asset(
                    'assets/images/languages/$e.png',
                    color: darkContColor,
                    height: 100,
                    width: 100,
                  ),
                );
              },
            )
          ],
        )
      ],
    );
  }
}
