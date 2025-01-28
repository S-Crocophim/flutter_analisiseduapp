import 'package:flutter/material.dart';
import '../Controller/extracurricular_controller.dart';

class ExtracurricularView extends StatefulWidget {
  const ExtracurricularView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExtracurricularViewState createState() => _ExtracurricularViewState();
}

class _ExtracurricularViewState extends State<ExtracurricularView> {
  final ExtracurricularController _controller = ExtracurricularController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extracurricular"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: ListView.builder(
        itemCount: _controller.model.extracurriculars.length,
        itemBuilder: (context, index) {
          final extracurricular = _controller.model.extracurriculars[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(extracurricular.image),
                fit: BoxFit.cover,
              ),
            ),
            child: ListTile(
              title: Text(
                extracurricular.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // Aksi ketika extracurricular dipilih
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Index halaman yang aktif (Subjects)
        // Anda mungkin perlu menyesuaikan ini tergantung bagaimana Anda mengatur navigasi
        onTap: (index) {
          // Aksi ketika item di bottomNavigationBar ditekan
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Subjects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'FAQ\'s',
          ),
        ],
      ),
    );
  }
}
