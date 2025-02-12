import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import '../constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});

  final ProjectUtils project;

  void _openLink(String? url) async {
    if (url == null) return;

    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290.0,
      width: 260.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  "Available on: ",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10.0,
                  ),
                ),
                const Spacer(),
                if (project.link != null)
                  InkWell(
                    onTap: () => _openLink(project.link),
                    child: Image.asset(
                      "assets/android_icon.png",
                      width: 17,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
