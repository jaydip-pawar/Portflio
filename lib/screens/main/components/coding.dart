import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Embedded C",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Java",
        ),
      ],
    );
  }
}
