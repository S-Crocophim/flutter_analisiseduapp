class Coach {
  String name;
  String extracurricular;
  String image; // Path ke gambar

  Coach({required this.name, required this.extracurricular, required this.image});
}

class CoachExtracurricularModel {
  List<Coach> coaches;

  CoachExtracurricularModel({required this.coaches});
}