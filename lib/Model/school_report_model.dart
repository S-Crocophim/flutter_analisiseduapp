class SubjectReport {
  String subjectName;
  int minimalCriteria;
  int number;
  String level;

  SubjectReport({
    required this.subjectName,
    required this.minimalCriteria,
    required this.number,
    required this.level,
  });
}

class SchoolReportModel {
  List<SubjectReport> subjectsReport;

  SchoolReportModel({required this.subjectsReport});
}