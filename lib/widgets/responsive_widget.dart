import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/app/utils/types/device_type.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget phoneWidget;
  final Widget largeDeviceWidget;
  const ResponsiveWidget({
    super.key,
    required this.phoneWidget,
    required this.largeDeviceWidget,
  });

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);

    final device = resp.device;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 250),
      child: device == DeviceType.phone ? phoneWidget : largeDeviceWidget,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );

    // switch (device) {
    //   case DeviceType.phone:
    //     return phoneWidget;
    //   default:
    //     return largeDeviceWidget;
    // }
  }
}
