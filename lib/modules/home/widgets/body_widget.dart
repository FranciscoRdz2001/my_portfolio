import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/app/utils/text_styles_util.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    final styles = TextStyles.of(context);
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(
            height: resp.hp(25),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    child: const Text('Name\nMobile dev'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: const Text('Picture'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
