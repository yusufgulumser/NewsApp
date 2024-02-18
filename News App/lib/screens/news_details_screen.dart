import 'package:flutter/material.dart';
import 'package:news_app/models/newsArticle.dart';
import 'package:news_app/widgets/appBar.dart';

class NewsDetailsScreen extends StatelessWidget {
  NewsDetailsScreen({
    super.key,
    required this.title,
    required this.newsArticle,
  });

  final String title;
  final List<NewsArticle> newsArticle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$title News',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: newsArticle.length,
              itemBuilder: (ctx, index) {
                final theNewsArticle = newsArticle[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          theNewsArticle.imgUrl,
                          width: 60,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        theNewsArticle.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(theNewsArticle.description),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
