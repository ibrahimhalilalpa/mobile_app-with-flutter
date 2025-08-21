class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String content;
  String urlToImage;

  ArticleModel(
      {required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.content});
}
