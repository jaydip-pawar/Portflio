import 'package:flutter/material.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/responsive.dart';
import 'dart:js' as js;

import '../../../constants.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) {
        return ProjectCard(
          project: projects[index],
          onPressed: () {
            switch(index) {
              case 0:
                js.context.callMethod('open', ['https://github.com/jaydip-pawar/Password-Manager-Flutter']);
                break;
              case 1:
                js.context.callMethod('open', ['https://github.com/jaydip-pawar/Child-and-Women-Safety-Application']);
                break;
              case 2:
                js.context.callMethod('open', ['https://github.com/jaydip-pawar/Emotion-based-Music-Player']);
                break;
              case 3:
                js.context.callMethod('open', ['https://github.com/jaydip-pawar/Hindi-Audio-Bible']);
                break;
              case 4:
                js.context.callMethod('open', ['https://github.com/jaydip-pawar/Secret-Keeper']);
                break;
              case 5:
                js.context.callMethod('open', ['https://github.com/jaydip-pawar/Laser-Alarm-Security-System']);
                break;
            }
          },
        );
      }
    );
  }
}
