import 'package:Portfolio/models/Education.dart';
import 'package:Portfolio/screens/home/components/education_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Educations extends StatelessWidget {
  const Educations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education & Internship",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                education.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: EducationCard(
                    education: education[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

