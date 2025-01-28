import '../Model/jadwal_counseling_model.dart';

class JadwalCounselingController {
  JadwalCounselingModel model = JadwalCounselingModel(
    schedules: [
      CounselingSchedule(
          day: "Monday",
          teacher: "Leviant",
          time: "9 AM - 1 PM",
          session: "Online"),
      CounselingSchedule(
          day: "Thursday",
          teacher: "Mikaela",
          time: "10 AM - 2 PM",
          session: "Offline"),
      CounselingSchedule(
          day: "Friday",
          teacher: "Novendy",
          time: "1 PM - 2 PM",
          session: "Online"),
      CounselingSchedule(
          day: "Wednesday",
          teacher: "Evelyn",
          time: "9 AM - 11 AM",
          session: "Online"),
      CounselingSchedule(
          day: "Monday",
          teacher: "Rowan",
          time: "1 PM - 3 PM",
          session: "Offline"),
      CounselingSchedule(
          day: "Tuesday",
          teacher: "Jasper",
          time: "11.30 AM - 2.30 PM",
          session: "Online"),
      CounselingSchedule(
          day: "Wednesday",
          teacher: "Willow",
          time: "1 PM - 4 PM",
          session: "Online"),
      CounselingSchedule(
          day: "Tuesday",
          teacher: "Atlas",
          time: "11 AM - 2 PM",
          session: "Offline"),
      CounselingSchedule(
          day: "Friday",
          teacher: "Elara",
          time: "9 AM - 2 PM",
          session: "Offline"),
    ],
    additionalInfo:
        "*Please go directly to the counseling room or you can go to the school room to ask for the counseling telephone number.",
  );
}
