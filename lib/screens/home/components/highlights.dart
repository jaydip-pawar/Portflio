import 'package:Portfolio/components/animated_counter.dart';
import 'package:Portfolio/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'high_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 25,
                        text: "+",
                      ),
                      label: "GitHub Repositories",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 25,
                    text: "+",
                  ),
                  label: "GitHub Repositories",
                ),
              ],
            ),
    );
  }
}
