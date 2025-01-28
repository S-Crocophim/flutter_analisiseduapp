import '../Model/coach_extracurricular_model.dart';

class CoachExtracurricularController {
  CoachExtracurricularModel model = CoachExtracurricularModel(
    coaches: [
      Coach(
        name: "Mr. Luca Bianchi",
        extracurricular: "Basketball",
        image: "assets/images/coach1.png", // Ganti dengan path gambar Anda
      ),
      Coach(
        name: "Mr. David Johnson",
        extracurricular: "Baseball",
        image: "assets/images/coach2.png", // Ganti dengan path gambar Anda
      ),
      Coach(
        name: "Ms. Sophie Lefevre",
        extracurricular: "Tennis",
        image: "assets/images/coach3.png", // Ganti dengan path gambar Anda
      ),
      // Tambahkan coach lainnya di sini
    ],
  );
}
