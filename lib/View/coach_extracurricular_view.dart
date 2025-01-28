import 'package:flutter/material.dart';
import '../Controller/coach_extracurricular_controller.dart';

class CoachExtracurricularView extends StatefulWidget {
  const CoachExtracurricularView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CoachExtracurricularViewState createState() =>
      _CoachExtracurricularViewState();
}

class _CoachExtracurricularViewState extends State<CoachExtracurricularView> {
  final CoachExtracurricularController _controller =
      CoachExtracurricularController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other's - Extracurricular"),
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
            Text(
              "Extracurricular",
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
                itemCount: _controller.model.coaches.length,
                itemBuilder: (context, index) {
                  final coach = _controller.model.coaches[index];
                  return Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.asset(coach.image),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                coach.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(coach.extracurricular),
                            ],
                          ),
                        ),
                      ],
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
