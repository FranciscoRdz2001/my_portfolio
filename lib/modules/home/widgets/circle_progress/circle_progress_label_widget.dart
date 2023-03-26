import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';

import '../../../../app/constants/colors_constants.dart';

class CircleProgressLabelWidget extends StatelessWidget {
  final String label;
  final Color color;
  const CircleProgressLabelWidget({
    super.key,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final styles = TextStyles.of(context);
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Flexible(child: Text(label, style: styles.w400(18, lightGreyColor))),
      ],
    );
  }
}
