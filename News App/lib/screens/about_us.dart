import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlLink = Uri.parse('https://www.linkedin.com/in/yusufgulumser');
final Uri _urlGithub = Uri.parse('https://github.com/yusufgulumser');

class AboutUs extends StatelessWidget {
  Future<void> _launchUrl() async {
    if (!await launchUrl(_urlLink)) {
      throw Exception('Could not launch $_urlLink');
    }
  }

  Future<void> _launchUrll() async {
    if (!await launchUrl(_urlGithub)) {
      throw Exception('Could not launch $_urlGithub');
    }
  }

  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey[300],
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          ElevatedButton.icon(
            onPressed: _launchUrl,
            icon: SvgPicture.asset(
              'assets/linkedin.svg',
              width: 40,
              height: 40,
            ),
            label: const Text('Linkedin'),
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              textStyle: const TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton.icon(
            onPressed: _launchUrll,
            icon: SvgPicture.asset(
              'assets/github.svg',
              height: 40,
              width: 40,
            ),
            label: const Text('Github'),
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              textStyle: const TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
