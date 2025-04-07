

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/contact_section.dart';

import '../constants/colors.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});


  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0,),
      height: screenHeight/1.2,
      constraints: BoxConstraints(minHeight: 350.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  into message
              const Text(
                "Hello. "
                    "\n I am Nduba Samuel"
                    "\nAndroid, IOS, and"
                    "\n Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const ContactSection())
                      );
                    },
                    child:
                    const Text("Get in touch")),
              ),
            ],
          ),
          SizedBox(
            child: ClipOval(
              child: Image.asset(
                "assets/profile_Img.jpeg",
                fit: BoxFit.cover,
                width: screenWidth / 3,
                height: screenWidth / 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}