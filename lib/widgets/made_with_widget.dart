import 'package:flutter/material.dart';

import '../app/utils/text_styles_util.dart';

class MadeWithWidget extends StatelessWidget {
  const MadeWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = TextStyles.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Made with', style: styles.w400(18)),
        const SizedBox(width: 10),
        const FlutterLogo(size: 20),
        const SizedBox(width: 10),
        Text('Flutter', style: styles.w500(18)),
      ],
    );
  }
}
