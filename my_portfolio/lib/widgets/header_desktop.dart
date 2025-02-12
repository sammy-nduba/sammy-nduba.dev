import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import '../constants/colors.dart';
import '../constants/nav_Items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key,
    required this.onNavMenuTap,});

  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {

            },),
          const Spacer(),
          for (int i = 0; i <navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {
                    onNavMenuTap(i);
                  },
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary
                  ),)),
            )
        ],
      ),
    );
  }
}