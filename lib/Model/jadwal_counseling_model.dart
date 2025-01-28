class CounselingSchedule {
  String day;
  String teacher;
  String time;
  String session;

  CounselingSchedule({
    required this.day,
    required this.teacher,
    required this.time,
    required this.session,
  });
}

class JadwalCounselingModel {
  List<CounselingSchedule> schedules;
  String additionalInfo; // Informasi tambahan di bawah tabel

  JadwalCounselingModel({
    required this.schedules,
    required this.additionalInfo,
  });
}
