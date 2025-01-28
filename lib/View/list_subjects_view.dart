import 'package:flutter/material.dart';
import '../Controller/list_subjects_controller.dart';

class ListSubjectsView extends StatefulWidget {
  const ListSubjectsView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListSubjectsViewState createState() => _ListSubjectsViewState();
}

class _ListSubjectsViewState extends State<ListSubjectsView> {
  final ListSubjectsController _controller = ListSubjectsController();

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Iqbal!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Subjects",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: _controller.model.subjects.length,
                itemBuilder: (context, index) {
                  final subject = _controller.model.subjects[index];
                  return Card(
                    child: InkWell(
                      onTap: () {
                        // Aksi ketika subject card ditekan
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            subject.icon,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          Text(
                            subject.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            subject.teacher,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
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
