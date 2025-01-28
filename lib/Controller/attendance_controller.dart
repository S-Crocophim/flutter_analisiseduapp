import '../Model/attendance_model.dart';

class AttendanceController {
  AttendanceModel model = AttendanceModel(
    totalMissedAttendance: 2,
    subjectsAttendance: [
      SubjectAttendance(
          subjectName: "Mathematics", attendanceCount: 1, notPresentCount: 1),
      SubjectAttendance(
          subjectName: "Physics", attendanceCount: 2, notPresentCount: 0),
      SubjectAttendance(
          subjectName: "Economics", attendanceCount: 1, notPresentCount: 1),
      SubjectAttendance(
          subjectName: "Biology", attendanceCount: 2, notPresentCount: 0),
      SubjectAttendance(
          subjectName: "Computer Science",
          attendanceCount: 2,
          notPresentCount: 0),
      SubjectAttendance(
          subjectName: "Statistics", attendanceCount: 2, notPresentCount: 0),
      SubjectAttendance(
          subjectName: "English", attendanceCount: 2, notPresentCount: 0),
      SubjectAttendance(
          subjectName: "Civics Education",
          attendanceCount: 2,
          notPresentCount: 0),
      SubjectAttendance(
          subjectName: "Chemistry", attendanceCount: 2, notPresentCount: 0),
      SubjectAttendance(
          subjectName: "Religion", attendanceCount: 2, notPresentCount: 0),
    ],
  );
}
