import 'package:flutter/material.dart';
import 'package:news_app/widgets/faqItem.dart';
import 'package:news_app/models/faqData.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: FAQData.faqList.map((faq) {
          return FAQItem(
            question: faq['question']!,
            answer: faq['answer']!,
          );
        }).toList(),
      ),
    );
  }
}
