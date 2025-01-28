import '../Model/faqs_model.dart';

class FAQsController {
  FAQsModel model = FAQsModel(
    faqs: [
      FAQ(
        question: "The average of first 50 natural numbers?",
        answer: "The average of first 50 natural numbers is 25.5",
      ),
      FAQ(
        question: "The value of Pi?",
        answer: "The value of Pi is approximately 3.14159",
      ),
      FAQ(
        question: "Value of Napier's constant 'e'?",
        answer: "The value of Napier's constant 'e' is approximately 2.71828",
      ),
      // Tambahkan FAQ lainnya di sini
    ],
  );
}
