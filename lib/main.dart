import 'package:flutter/material.dart';
import 'View/login_view.dart';
import 'View/attendance_view.dart';
import 'View/coach_extracurricular_view.dart';
import 'View/dashboard_view.dart';
import 'View/extracurricular_view.dart';
import 'View/faqs_view.dart';
import 'View/jadwal_counseling_view.dart';
import 'View/list_subjects_view.dart';
import 'View/list_teacher_view.dart';
import 'View/news_view.dart';
import 'View/school_events_view.dart';
import 'View/school_report_view.dart';
import 'View/subjects_view.dart'; // Import halaman News

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(), // Halaman awal aplikasi
      routes: {
        '/login': (context) => LoginView(),
        '/dashboard': (context) => DashboardView(),
        '/subjects': (context) => SubjectsView(),
        '/faqs': (context) => FAQsView(),
        '/attendance': (context) => AttendanceView(),
        '/extracurricular': (context) => ExtracurricularView(),
        '/coach_extracurricular': (context) => CoachExtracurricularView(),
        '/list_subjects': (context) => ListSubjectsView(),
        '/list_teacher': (context) => ListTeacherView(),
        '/school_report': (context) => SchoolReportView(),
        '/school_events': (context) => SchoolEventsView(),
        '/jadwal_counseling': (context) => JadwalCounselingView(),
        '/news': (context) => NewsView(),
      },
    );
  }
}
