import 'dart:ui';

class Subject {
  String name;
  Color color;
  String image; // Path ke gambar

  Subject({required this.name, required this.color, required this.image});
}

class SubjectsModel {
  List<Subject> subjects;

  SubjectsModel({required this.subjects});
}
