import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleView extends StatelessWidget {
  final String blogUrl;
  ArticleView({required this.blogUrl});

  Future<void> _launchURL() async {
    if (await canLaunch(blogUrl)) {
      await launch(blogUrl);
    } else {
      throw 'Could not launch $blogUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Haber üzerine tıklama olayını burada gerçekleştiriyoruz.
    _launchURL();

    return Scaffold(
      appBar: AppBar(title: Text("Article")),
      body: Center(
        child: CircularProgressIndicator(), // Yükleniyor göstergesi
      ),
    );
  }
}
