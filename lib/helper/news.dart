import 'dart:convert';

import 'package:flutternews/models/ArticleModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  String url =
      "http://newsapi.org/v2/top-headlines?country=in&from=${DateTime.now()}&sortBy=publishedAt&apiKey=91f1b3852819453185cd59eb6609d2b5";

  Future<void> getNews() async {
    var res = await http.get(url);
    var jsonData = jsonDecode(res.body);

    if (res.statusCode == 200) {
      jsonData['articles'].forEach((element) {
        if ((element['urlToImage'] != null) &&
            (element['description'] != null)) {
          var articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content'],
              publishedAt: element['publishedAt']);

          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsSource {
  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String categoryType) async {
    String url =
        "http://newsapi.org/v2/top-headlines?category=$categoryType&country=in&from=${DateTime
        .now()}&sortBy=publishedAt&apiKey=91f1b3852819453185cd59eb6609d2b5";

    var res = await http.get(url);
    var jsonData = jsonDecode(res.body);

    if (res.statusCode == 200) {
      jsonData['articles'].forEach((element) {
        if ((element['urlToImage'] != null) &&
            (element['description'] != null)) {
          var articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content'],
              publishedAt: element['publishedAt']);

          news.add(articleModel);
        }
      });
    }
  }
}
