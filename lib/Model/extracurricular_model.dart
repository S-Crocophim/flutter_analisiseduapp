import 'dart:ui';

class Extracurricular {
  String name;
  Color color;
  String image; // Path ke gambar

  Extracurricular(
      {required this.name, required this.color, required this.image});
}

class ExtracurricularModel {
  List<Extracurricular> extracurriculars;

  ExtracurricularModel({required this.extracurriculars});
}
