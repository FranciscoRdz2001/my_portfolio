import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/responsive_util.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = ResponsiveUtil.of(context);
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 500,
            minHeight: 350,
          ),
          child: SizedBox(
            height: resp.hp(25),
            child: ResponsiveWidget(
              phoneWidget: Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: const Text('Picture'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.purple,
                    child: const Text('Name\nMobile dev'),
                  ),
                ],
              ),
              largeDeviceWidget: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.purple,
                      child: const Text('Name\nMobile dev'),
                    ),
                  ),
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: const Text('Picture'),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
