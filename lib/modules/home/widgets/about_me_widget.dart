import 'package:flutter/material.dart';

import '../../../app/utils/responsive_util.dart';
import '../../../app/utils/text_styles_util.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    return Container(
      height: resp.hp(20),
      color: Colors.blueAccent,
      child: Row(
        children: [
          const Expanded(
            child: Align(child: Text('Picture')),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.amber,
              child: const Text('Info'),
            ),
          ),
        ],
      ),
    );
  }
}
