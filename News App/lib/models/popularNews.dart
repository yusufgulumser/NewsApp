import 'package:flutter/material.dart';

class NewsDetails {
  String title;
  DateTime publicationDate;
  String author;
  String description;
  Color boxColor;

  NewsDetails(
      {required this.title,
      required this.publicationDate,
      required this.author,
      required this.description,
      required this.boxColor});

  static List<NewsDetails> getNewsDetails() {
    List<NewsDetails> theNewsDetails = [
      NewsDetails(
          title:
              "Excitement Builds as Countries Prepare for the 2024 Summer Olympics",
          publicationDate: DateTime(2024, 2, 18),
          author: ' Ayse Demir',
          description:
              'With the end of autumn, many countries have intensified their preparations for the 2024 Summer Olympics. Athletes have embarked on rigorous training programs during the winter months. Coaches and athletes in cities like Paris, Athens, and Los Angeles, which will host the Olympics after Tokyo, have entered a high-intensity training regime with the goal of winning gold medals. Despite the challenges brought by the pandemic, the motivation of athletes remains high, and their determination is admirable.',
          boxColor: Colors.blueGrey),
      NewsDetails(
          title: "AI-Powered Automation Revolutionizing the Business World",
          publicationDate: DateTime(2024, 2, 18),
          author: 'Maria Rodri',
          description:
              'Advancing artificial intelligence technologies are leading to a significant transformation in the business world. Automation and AI-based systems offer significant advantages to companies in optimizing processes and increasing efficiency. In many industries, it is observed that reducing the human factor leads to a significant reduction in errors and costs. In the future, AI-powered automation is expected to become even more widespread in the business world.',
          boxColor: Colors.blueGrey),
      NewsDetails(
          title:
              "Newly Developed Vaccine Shows Promising Findings in Preventing Influenza ",
          publicationDate: DateTime(2024, 2, 18),
          author: 'Fatma Aksoy',
          description:
              'Scientists indicate that a newly developed flu vaccine provides more effective protection against flu viruses. Clinical trials have shown that the vaccine offers broad protection against various flu strains. This development is considered a promising step towards controlling future flu outbreaks and preventing flu-related illnesses.',
          boxColor: Colors.blueGrey),
      NewsDetails(
          title:
              'Tension in International Relations: X Countrys Border Dispute Escalates',
          publicationDate: DateTime(2024, 2, 18),
          author: 'John  Smith',
          description:
              'Tensions have escalated in international relations as the border dispute between X country and its neighbor continues to worsen. Diplomatic efforts to resolve the conflict have so far been unsuccessful, raising concerns about the potential for further escalation. The situation remains volatile, with both sides increasing military presence along the disputed border. International observers are closely monitoring the developments and calling for restraint to prevent the situation from spiraling out of control.',
          boxColor: Colors.blueGrey)
    ];
    return theNewsDetails;
  }
}
