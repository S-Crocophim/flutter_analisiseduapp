class SchoolEvent {
  String title;
  String description;
  String buttonText; // Teks pada tombol "Full View"

  SchoolEvent({
    required this.title,
    required this.description,
    required this.buttonText,
  });
}

class SchoolEventsModel {
  List<SchoolEvent> events;

  SchoolEventsModel({required this.events});
}
