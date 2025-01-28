import 'package:flutter/material.dart';
import '../Controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final DashboardController _controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
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
            SizedBox(height: 8),
            Text(
              "You have 5 pending task this week",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "300 Points",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Cross 500 within the week to get a free One on One Class.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                    ),
                    child: Text("Take test now"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "5 Pending task",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Gunakan ListView.builder untuk menampilkan daftar Pending Task
            Expanded(
              child: ListView.builder(
                itemCount: _controller.model.pendingTasks.length,
                itemBuilder: (context, index) {
                  final task = _controller.model.pendingTasks[index];
                  return ListTile(
                    title: Text(task.name),
                    subtitle: Text("${task.subject} ${task.timeLeft}"),
                    trailing: Icon(Icons.info_outline),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Subjects",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Wrap(
              spacing: 5,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/subjects');
                    },
                    child: Text("Mathematics")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/subjects');
                    },
                    child: Text("Chemistry")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/subjects');
                    },
                    child: Text("Physics")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/subjects');
                    },
                    child: Text("Other's")),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Ganti dengan index halaman yang aktif
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

class SubjectCard extends StatelessWidget {
  final String subjectName;
  final Color color;

  const SubjectCard(
      {super.key, required this.subjectName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        subjectName,
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
