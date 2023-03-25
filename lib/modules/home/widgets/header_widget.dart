import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 70),
      child: Container(
        height: resp.hp(10),
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Francisco Rodríguez',
                  style: styles.w700(16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                'All projects',
                style: styles.w700(16),
              ),
              SizedBox(width: resp.wp(5)),
              Text(
                'Contact',
                style: styles.w700(16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
