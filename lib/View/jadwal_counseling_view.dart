import 'package:flutter/material.dart';
import '../Controller/jadwal_counseling_controller.dart';

class JadwalCounselingView extends StatefulWidget {
  const JadwalCounselingView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JadwalCounselingViewState createState() => _JadwalCounselingViewState();
}

class _JadwalCounselingViewState extends State<JadwalCounselingView> {
  final JadwalCounselingController _controller = JadwalCounselingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counseling"),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text("No")),
                    DataColumn(label: Text("Day")),
                    DataColumn(label: Text("Teacher")),
                    DataColumn(label: Text("Time")),
                    DataColumn(label: Text("Session")),
                  ],
                  rows: _controller.model.schedules
                      .asMap()
                      .entries
                      .map(
                        (entry) => DataRow(
                          cells: [
                            DataCell(Text((entry.key + 1).toString())),
                            DataCell(Text(entry.value.day)),
                            DataCell(Text(entry.value.teacher)),
                            DataCell(Text(entry.value.time)),
                            DataCell(Text(entry.value.session)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              _controller.model.additionalInfo,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Index halaman yang aktif (Home)
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
