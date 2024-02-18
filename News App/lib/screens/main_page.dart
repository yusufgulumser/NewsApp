import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/models/newsArticle.dart';
import 'package:news_app/models/popularNews.dart';
import 'package:news_app/screens/news_details_screen.dart';
import 'package:news_app/widgets/appBar.dart';
import 'package:news_app/widgets/search.dart';
import 'package:intl/intl.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<NewsModel> theNewsTopics = [];
  List<NewsDetails> popularNews = [];

  void _getNews() {
    theNewsTopics = NewsModel.getNewsTopics();
  }

  void _getNewsDetails() {
    popularNews = NewsDetails.getNewsDetails();
  }

  @override
  void initState() {
    _getNews();
    _getNewsDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            search(),
            const SizedBox(
              height: 30,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color:
                                theNewsTopics[index].boxColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  String selectedCategory =
                                      theNewsTopics[index].category;
                                  List<NewsArticle> filteredArticles =
                                      NewsArticle.newsArticle
                                          .where((article) =>
                                              article.category ==
                                              selectedCategory)
                                          .toList();
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => NewsDetailsScreen(
                                      title: theNewsTopics[index].name,
                                      newsArticle: filteredArticles,
                                    ),
                                  ));
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                        theNewsTopics[index].iconPath),
                                  ),
                                ),
                              ),
                              Text(
                                theNewsTopics[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ]),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: theNewsTopics.length),
              ),
            ]),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Popular News',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: popularNews[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularNews[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            popularNews[index].description,
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 14),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'By: ${popularNews[index].author} -- ${DateFormat('yyyy-MM-dd').format(popularNews[index].publicationDate)}',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 122, 121, 121),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'read more...',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                itemCount: popularNews.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
