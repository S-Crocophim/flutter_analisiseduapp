import 'package:flutter/material.dart';
import '../Controller/list_teacher_controller.dart';

class ListTeacherView extends StatefulWidget {
  const ListTeacherView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListTeacherViewState createState() => _ListTeacherViewState();
}

class _ListTeacherViewState extends State<ListTeacherView> {
  final ListTeacherController _controller = ListTeacherController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Teacher"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Iqbal,",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _controller.model.teachers.length,
                itemBuilder: (context, index) {
                  final teacher = _controller.model.teachers[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        // Ganti dengan gambar profil guru
                        backgroundImage:
                            AssetImage('assets/images/teacher.png'),
                      ),
                      title: Text(teacher.name),
                      subtitle: Text(teacher.subject),
                      onTap: () {
                        // Aksi ketika item list ditekan
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Index halaman yang aktif (Subjects)
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
