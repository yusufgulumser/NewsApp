import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/about_us.dart';
import 'package:news_app/screens/contact_us.dart';
import 'package:news_app/screens/faq.dart';
import 'package:news_app/screens/main_page.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
      title: const Text(
        'News',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (ctx) => MainPage()));
          },
          child: SvgPicture.asset(
            'assets/icons8-news.svg',
            height: 30,
            width: 30,
          ),
        ),
      ),
      actions: [
        PopupMenuButton(
          itemBuilder: (ctx) => [
            PopupMenuItem(
              value: 'option 1',
              child: const Text('About Us'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AboutUs()),
                );
              },
            ),
            PopupMenuItem(
              value: 'option2',
              child: const Text('Contact Us'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => ContactUsScreen()));
              },
            ),
            PopupMenuItem(
              value: 'option3',
              child: Text('FAQ'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const FAQScreen()));
              },
            )
          ],
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons8-menu.svg',
              height: 30,
              width: 30,
            ),
          ),
        ),
      ]);
}
