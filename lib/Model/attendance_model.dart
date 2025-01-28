class SubjectAttendance {
  String subjectName;
  int attendanceCount;
  int notPresentCount;

  SubjectAttendance({
    required this.subjectName,
    required this.attendanceCount,
    required this.notPresentCount,
  });
}

class AttendanceModel {
  int totalMissedAttendance;
  List<SubjectAttendance> subjectsAttendance;

  AttendanceModel({
    required this.totalMissedAttendance,
    required this.subjectsAttendance,
  });
}
