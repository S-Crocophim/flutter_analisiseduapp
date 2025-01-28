import 'package:flutter/material.dart';
import '../Controller/subjects_controller.dart';

class SubjectsView extends StatefulWidget {
  const SubjectsView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SubjectsViewState createState() => _SubjectsViewState();
}

class _SubjectsViewState extends State<SubjectsView> {
  final SubjectsController _controller = SubjectsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subjects"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: ListView.builder(
        itemCount: _controller.model.subjects.length,
        itemBuilder: (context, index) {
          final subject = _controller.model.subjects[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(subject.image),
                fit: BoxFit.cover,
              ),
            ),
            child: ListTile(
              title: Text(
                subject.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 8, 8, 8),
                ),
              ),
              onTap: () {
                // Aksi ketika subject dipilih
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Index halaman yang aktif (Subjects)
        onTap: (index) {
          // Aksi ketika item di bottomNavigationBar ditekan
          switch (index) {
            case 0:
              // Navigasi ke halaman "Home" (misalnya DashboardView)
              Navigator.pushReplacementNamed(context, '/dashboard');
              break;
            case 1:
              // Navigasi ke halaman "Subjects" (misalnya SubjectsView)
              Navigator.pushReplacementNamed(context, '/subjects');
              break;
            case 2:
              // Navigasi ke halaman "FAQ's" (misalnya FAQsView)
              Navigator.pushReplacementNamed(context, '/faqs');
              break;
          }
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
TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
