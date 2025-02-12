

import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Mobile extends StatelessWidget{
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      height: 500,
      constraints: BoxConstraints(
        minHeight: 260.0,
      ),
      child: Stack(
        children: [
          // Image on the top right
          Positioned(
            top: 20.0, // Top spacer
            right: 20, // Align to the right
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    CustomColor.scaffoldBg.withOpacity(0.6),
                    CustomColor.scaffoldBg.withOpacity(0.6),
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Container(
                width: screenWidth / 2, // image size
                height: screenWidth / 2, // height matches width for a perfect circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 2.0, // Border width
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      blurRadius: 5.0, // Shadow blur
                      spreadRadius: 2.0, // Shadow spread
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Padding(
                    padding: EdgeInsets.all(0), // Add padding here
                    child: Image.asset(
                      "assets/profile_Img.jpeg",
                      fit: BoxFit.cover, // image fits within the circle
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Text below the image (bottom left of the image)
          Positioned(
            top: 60.0 + (screenWidth / 3), // Position below the image (top spacer + image height)
            left: 30.0, // Left margin
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                const Text(
                  "Hello. \n I am Nduba Samuel"
                      "\nAndroid, IOS, and\n Flutter Developer",
                  style: TextStyle(
                    fontSize: 24.0,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 190.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get in touch"),
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