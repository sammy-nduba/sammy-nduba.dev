import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizeCheck.dart';
import 'package:my_portfolio/constants/sns_link.dart';
import 'package:my_portfolio/widgets/custom_textField.dart';
import '../constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// Only import 'dart:js' if running on Web
// ignore: avoid_web_libraries_in_flutter
// import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _openUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (kIsWeb) {
      // Use `url_launcher` for web instead of `dart:js`
      await launchUrl(uri);
    } else {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // Title
          Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50.0),
          // Name & Email Fields
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 150,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return constraints.maxWidth >= minDesktopWidth
                    ? buildNameEmailFieldDesktop()
                    : buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          // Message Field
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: "Your Message",
              maxLines: 16,
            ),
          ),
          const SizedBox(height: 20),
          // Send Button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),
          // Divider
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: Divider(),
          ),
          const SizedBox(height: 15),
          // Social Media Links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              _buildSocialIcon("assets/github.png", SnsLink.github),
              _buildSocialIcon("assets/linkedin.png", SnsLink.linkedIn),
              _buildSocialIcon("assets/facebook.png", SnsLink.facebook),
              _buildSocialIcon("assets/instagram.png", SnsLink.instagram),
              _buildSocialIcon("assets/twitter.png", SnsLink.twitter),
              _buildSocialIcon("assets/telegram.png", SnsLink.github),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(String asset, String url) {
    return InkWell(
      onTap: () => _openUrl(url),
      child: Image.asset(asset, width: 28),
    );
  }

  Widget buildNameEmailFieldDesktop() {
    return Row(
      children: [
        // Name
        const Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        const SizedBox(width: 15),
        // Email
        const Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Widget buildNameEmailFieldMobile() {
    return Column(
      children: [
        // Name
        const CustomTextField(
          hintText: "Your Name",
        ),
        const SizedBox(height: 15),
        // Email
        const CustomTextField(
          hintText: "Your Email",
        ),
      ],
    );
  }
}
