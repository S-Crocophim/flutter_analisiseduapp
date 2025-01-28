import 'package:flutter/material.dart';
import '../Model/extracurricular_model.dart';

class ExtracurricularController {
  ExtracurricularModel model = ExtracurricularModel(
    extracurriculars: [
      Extracurricular(
        name: "Basketball",
        color: Colors.blue,
        image: "assets/images/basketball.png", // Ganti dengan path gambar Anda
      ),
      Extracurricular(
        name: "Vollyball",
        color: Colors.purple,
        image: "assets/images/vollyball.png", // Ganti dengan path gambar Anda
      ),
      Extracurricular(
        name: "Band",
        color: Colors.orange,
        image: "assets/images/band.png", // Ganti dengan path gambar Anda
      ),
      Extracurricular(
        name: "Other's",
        color: Colors.green,
        image: "assets/images/others.png", // Ganti dengan path gambar Anda
      ),
    ],
  );
}
