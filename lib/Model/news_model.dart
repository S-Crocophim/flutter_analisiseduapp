class NewsItem {
  String title;
  String description;
  String buttonText; // Teks pada tombol "Full View"

  NewsItem({
    required this.title,
    required this.description,
    required this.buttonText,
  });
}

class NewsModel {
  List<NewsItem> newsItems;

  NewsModel({required this.newsItems});
}
