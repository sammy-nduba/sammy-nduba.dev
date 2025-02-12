
import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget{
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      width: double.maxFinite,
      child: const Text(
        "Made by Nduba Samuel with flutter 3.10",
        style: TextStyle(fontWeight: FontWeight.w400,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}