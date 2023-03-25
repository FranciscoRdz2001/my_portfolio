import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';

import '../../../app/utils/responsive_util.dart';
import '../../../app/utils/text_styles_util.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 500,
        minHeight: 250,
      ),
      child: Container(
        height: resp.hp(30),
        color: Colors.blueAccent,
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
              const SizedBox(
                width: 300,
                child: Align(child: Text('Picture')),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: const Text('Info'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
