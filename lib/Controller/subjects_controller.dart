import 'package:flutter/material.dart';
import '../Model/subjects_model.dart';

class SubjectsController {
  SubjectsModel model = SubjectsModel(
    subjects: [
      Subject(
        name: "Mathematics",
        color: Colors.purple,
        image: "assets/images/mathematics.png", // Ganti dengan path gambar Anda
      ),
      Subject(
        name: "Physics",
        color: Colors.blue,
        image: "assets/images/physics.png", // Ganti dengan path gambar Anda
      ),
      Subject(
        name: "Chemistry",
        color: Colors.red,
        image: "assets/images/chemistry.png", // Ganti dengan path gambar Anda
      ),
      Subject(
        name: "Other's",
        color: Colors.orange,
        image: "assets/images/others.png", // Ganti dengan path gambar Anda
      ),
    ],
  );
}
