import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizeCheck.dart';
import 'package:my_portfolio/constants/sns_link.dart';
import 'package:my_portfolio/widgets/custom_textField.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../constants/colors.dart';

class ContactSection extends StatefulWidget {
  
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isSending = false;

  void _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch $url')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error launching $url')),
      );
    }
  }

  Future<void> _sendMessage() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSending = true);

    try {
      await FirebaseFirestore.instance.collection('message').add({
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'message': _messageController.text.trim(),
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully')),
      );

      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    } catch (e) {
      String errorMsg = 'Failed to send message';
      if (e is FirebaseException) {
        errorMsg += ': ${e.message}';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMsg)),
      );
    } finally {
      setState(() => _isSending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
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
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 150),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return constraints.maxWidth >= minDesktopWidth
                        ? buildNameEmailFieldDesktop()
                        : buildNameEmailFieldMobile();
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Message Field
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700),
              child: CustomTextField(
                controller: _messageController,
                hintText: "Your Message",
                maxLines: 16,
                validator: (value) =>
                value!.isEmpty ? "Please enter your message" : null,
              ),
            ),
            const SizedBox(height: 20),

            // Send Button
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: _isSending ? null : _sendMessage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isSending ? Colors.grey : null, // Grey out when sending
                  ),
                  child: _isSending
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text("Get in touch"),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Divider & Socials
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Divider(),
            ),
            const SizedBox(height: 15),
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
                _buildSocialIcon("assets/telegram.png", SnsLink.telegram),
              ],
            ),
          ],
        ),
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
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: "Your Name",
            validator: (value) =>
            value!.isEmpty ? "Please enter your name" : null,
          ),
        ),
        const SizedBox(width: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: "Your Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return "Please enter a valid email";
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget buildNameEmailFieldMobile() {
    return Column(
      children: [
        CustomTextField(
          controller: _nameController,
          hintText: "Your Name",
          validator: (value) =>
          value!.isEmpty ? "Please enter your name" : null,
        ),
        const SizedBox(height: 15),
        CustomTextField(
          controller: _emailController,
          hintText: "Your Email",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your email";
            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return "Please enter a valid email";
            }
            return null;
          },
        ),
      ],
    );
  }
}
