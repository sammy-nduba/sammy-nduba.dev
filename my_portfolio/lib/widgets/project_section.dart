
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/widgets/project_card.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';

class ProjectSection extends StatelessWidget{
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),

      child: Column(
        children: [
          //     projects title
          const Text("Work projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50.0),

          //    Work project cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i=0; i<workProjectUtils.length; i++)
                  ProjectCardWidget(
                      project: workProjectUtils[i]
                  ),
              ],
            ),
          ),
          const SizedBox(height: 80,),

          //     Hobby Projects
          const Text("Hobby projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50.0),
          //     hobby project cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i=0; i<hobbyProjectUtils.length; i++)
                  ProjectCardWidget(
                      project: hobbyProjectUtils[i]
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}