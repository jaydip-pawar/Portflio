import 'package:flutter/material.dart';
import 'package:portfolio/models/Education.dart';

import '../../../constants.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.education,
  }) : super(key: key);

  final Education education;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            education.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(education.source!),
          const SizedBox(height: defaultPadding),
          Text(
            education.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
