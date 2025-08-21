import 'dart:convert';
import 'package:mobile_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    //String url = "https://newsapi.org/v2/top-headlines?&category=business&apiKey=8f1d8e4636e943f7ad65b346fb6d1a61";
    String url =
        "http://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=8f1d8e4636e943f7ad65b346fb6d1a61";

    try {
      var response = await http.get(
          Uri.parse(url)); // Uri.parse ile URL'yi uygun şekilde dönüştürdük.

      if (response.statusCode == 200) {
        // Başarılı yanıt geldiğinde
        var jsonData = jsonDecode(response.body);

        if (jsonData['status'] == "ok") {
          jsonData["articles"].forEach((element) {
            if (element['urlToImage'] != null &&
                element['description'] != null) {
              ArticleModel article = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                urlToImage: element['urlToImage'],
                content: element["content"],
                url: element["url"],
              );
              news.add(article);
            }
          });
        }
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future<void> getNews(String category) async {
    //String url = "https://newsapi.org/v2/top-headlines?&category=business&apiKey=8f1d8e4636e943f7ad65b346fb6d1a61";

    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=8f1d8e4636e943f7ad65b346fb6d1a61";

    try {
      var response = await http.get(
          Uri.parse(url)); // Uri.parse ile URL'yi uygun şekilde dönüştürdük.

      if (response.statusCode == 200) {
        // Başarılı yanıt geldiğinde
        var jsonData = jsonDecode(response.body);

        if (jsonData['status'] == "ok") {
          jsonData["articles"].forEach((element) {
            if (element['urlToImage'] != null &&
                element['description'] != null) {
              ArticleModel article = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                urlToImage: element['urlToImage'],
                content: element["content"],
                url: element["url"],
              );
              news.add(article);
            }
          });
        }
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
