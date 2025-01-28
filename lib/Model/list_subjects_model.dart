class Subject {
  String name;
  String teacher;
  String icon; // Path ke icon

  Subject({required this.name, required this.teacher, required this.icon});
}

class ListSubjectsModel {
  List<Subject> subjects;

  ListSubjectsModel({required this.subjects});
}