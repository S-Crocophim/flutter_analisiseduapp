import '../Model/list_subjects_model.dart';

class ListSubjectsController {
  ListSubjectsModel model = ListSubjectsModel(
    subjects: [
      Subject(
        name: "Mathematics",
        teacher: "Ms. Emily Carter",
        icon: "assets/icons/mathematics.png", // Ganti dengan path icon Anda
      ),
      Subject(
        name: "Physics",
        teacher: "Mr. Pierre Dubois",
        icon: "assets/icons/physics.png", // Ganti dengan path icon Anda
      ),
      Subject(
        name: "Biology",
        teacher: "Mr. Curie",
        icon: "assets/icons/biology.png", // Ganti dengan path icon Anda
      ),
      // Tambahkan subject lainnya di sini
    ],
  );
}
