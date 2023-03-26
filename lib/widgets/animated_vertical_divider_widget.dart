import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';

class AnimatedVerticalDividerWidget extends StatelessWidget {
  final GlobalKey parentKey;
  const AnimatedVerticalDividerWidget({
    super.key,
    required this.parentKey,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> height = ValueNotifier(0);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final size = parentKey.currentContext?.size;
      if (size == null) return;
      height.value = size.height;
    });
    return ValueListenableBuilder(
      valueListenable: height,
      builder: (context, value, child) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.fastLinearToSlowEaseIn,
          height: value,
          width: 2.5,
          decoration: BoxDecoration(
            color: lightGreyColor,
            borderRadius: BorderRadius.circular(100),
          ),
        );
      },
    );
  }
}
