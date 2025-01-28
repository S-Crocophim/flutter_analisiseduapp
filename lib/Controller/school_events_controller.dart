import '../Model/school_events_model.dart';

class SchoolEventsController {
  SchoolEventsModel model = SchoolEventsModel(
    events: [
      SchoolEvent(
        title: "Students Voice 2024",
        description:
            "Participate in the 2023 BPS Survey and share your aspirations. Your Voice Shapes the Future of Our Schools.",
        buttonText: "Full View",
      ),
      SchoolEvent(
        title: "Healthy Is Cool!",
        description:
            "Join any sports competition. Take care of your body's health!",
        buttonText: "Full View",
      ),
      SchoolEvent(
        title: "Earth Our Home",
        description:
            "Let's work together to protect the environment with greening activities, recycling waste and cleaning schools.",
        buttonText: "Full View",
      ),
      // Tambahkan event lainnya di sini
    ],
  );
}
