import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/colors_constants.dart';

import '../app/utils/text_styles_util.dart';

class MadeWithWidget extends StatelessWidget {
  const MadeWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = TextStyles.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FlutterLogo(size: 20),
        const SizedBox(width: 10),
        Text('Made with', style: styles.w400(14, greyColor)),
        Text(' Flutter', style: styles.w500(14, lightGreyColor)),
      ],
    );
  }
}
