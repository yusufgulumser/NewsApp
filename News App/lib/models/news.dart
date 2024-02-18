import 'package:flutter/material.dart';

class NewsModel {
  NewsModel(
      {required this.name,
      required this.iconPath,
      required this.boxColor,
      required this.category});
  String name;
  String iconPath;
  Color boxColor;
  String category;

  static List<NewsModel> getNewsTopics() {
    List<NewsModel> theNews = [
      NewsModel(
          name: 'Sport',
          iconPath: 'assets/sport.svg',
          boxColor: Colors.pink,
          category: 'sports'),
      NewsModel(
          name: 'Technology',
          iconPath: 'assets/technology.svg',
          boxColor: Colors.blue,
          category: 'technology'),
      NewsModel(
          name: 'Health',
          iconPath: 'assets/health.svg',
          boxColor: Colors.purple,
          category: 'health'),
      NewsModel(
          name: 'Politics',
          iconPath: 'assets/politics.svg',
          boxColor: Colors.green,
          category: 'politics'),
    ];
    return theNews;
  }
}
