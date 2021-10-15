import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import 'components/highlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/educations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Educations(),
      ],
    );
  }
}
