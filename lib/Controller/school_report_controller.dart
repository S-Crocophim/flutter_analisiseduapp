import '../Model/school_report_model.dart';

class SchoolReportController {
  SchoolReportModel model = SchoolReportModel(
    subjectsReport: [
      SubjectReport(
          subjectName: "Mathematics",
          minimalCriteria: 70,
          number: 90,
          level: "A"),
      SubjectReport(
          subjectName: "Physics", minimalCriteria: 75, number: 92, level: "A"),
      SubjectReport(
          subjectName: "Economics",
          minimalCriteria: 75,
          number: 86,
          level: "B"),
      SubjectReport(
          subjectName: "Biology", minimalCriteria: 70, number: 89, level: "B"),
      SubjectReport(
          subjectName: "Computer Science",
          minimalCriteria: 75,
          number: 93,
          level: "A"),
      SubjectReport(
          subjectName: "Statistics",
          minimalCriteria: 78,
          number: 81,
          level: "B"),
      SubjectReport(
          subjectName: "English", minimalCriteria: 70, number: 92, level: "A"),
      SubjectReport(
          subjectName: "Civics Education",
          minimalCriteria: 70,
          number: 93,
          level: "A"),
      SubjectReport(
          subjectName: "Chemistry",
          minimalCriteria: 70,
          number: 94,
          level: "A"),
      SubjectReport(
          subjectName: "Religion", minimalCriteria: 75, number: 89, level: "B"),
    ],
  );
}
