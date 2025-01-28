import '../Model/news_model.dart';

class NewsController {
  NewsModel model = NewsModel(
    newsItems: [
      NewsItem(
        title: "School Academic Guidelines",
        description:
            "Click the full view to see the school academic guidelines",
        buttonText: "Full View",
      ),
      NewsItem(
        title: "Payment Procedures",
        description: "Click the full view to see the payment procedures",
        buttonText: "Full View",
      ),
      NewsItem(
        title: "Jamboree Activities",
        description: "Click the full view to see the jamboree activities",
        buttonText: "Full View",
      ),
      NewsItem(
        title: "Registration for Odd Semester FY 2024/2025",
        description: "Click the full view to register for the odd semester",
        buttonText: "Full View",
      ),
      // Tambahkan news item lainnya di sini
    ],
  );
}
