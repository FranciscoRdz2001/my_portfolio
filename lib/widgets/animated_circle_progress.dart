import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';
import 'package:my_portfolio/data/models/chart_data_model.dart';
import 'package:my_portfolio/data/models/chart_element_model.dart';
import 'package:my_portfolio/modules/home/widgets/circle_progress/circle_progress_label_widget.dart';
import 'package:my_portfolio/widgets/painters/circle_stats_progress.dart';

class AnimatedCircleProgressWidget extends StatefulWidget {
  final ChartElementsModel elements;
  const AnimatedCircleProgressWidget({
    super.key,
    required this.elements,
  });

  @override
  State<AnimatedCircleProgressWidget> createState() =>
      _AnimatedCircleProgressWidgetState();
}

class _AnimatedCircleProgressWidgetState
    extends State<AnimatedCircleProgressWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  late ChartDataModel _currentModel;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )
      ..addListener(_animationListener)
      ..addStatusListener(_animationStatusListener)
      ..forward()
      ..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _setNewData();
  }

  void _setNewData() {
    _currentModel =
        widget.elements.data[Random().nextInt(widget.elements.data.length - 1)];
  }

  void _animationListener() {
    setState(() {});
  }

  void _animationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.forward) {
      _setNewData();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    final value = _animation.value;
    final percents = widget.elements.data.map((e) => e.percent).toList();
    final labels = widget.elements.data.map((e) => e.name).toList();
    final colors = widget.elements.data.map((e) => e.color).toList();
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: Size(resp.hp(20), resp.hp(20)),
              painter: CircleStatsProgress(
                  percents: percents,
                  animationValue: _controller.status == AnimationStatus.forward
                      ? value
                      : -value,
                  colors: colors),
            ),
            Opacity(
              opacity: value,
              child: Text(
                '100%',
                style: styles.w500(18, lightGreyColor),
              ),
            )
          ],
        ),
        SizedBox(width: resp.wp(2.5)),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                labels.length,
                (x) {
                  return CircleProgressLabelWidget(
                    label: labels[x],
                    color: colors[x],
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
