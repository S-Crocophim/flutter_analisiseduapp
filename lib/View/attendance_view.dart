import 'package:flutter/material.dart';
import '../Controller/attendance_controller.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AttendanceViewState createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  final AttendanceController _controller = AttendanceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
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
              "You have missed ${_controller.model.totalMissedAttendance} attendance!",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            SizedBox(height: 20),
            // Tabel Attendance
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text("No")),
                    DataColumn(label: Text("Subject Name")),
                    DataColumn(label: Text("Attendance")),
                    DataColumn(label: Text("Not Present")),
                  ],
                  rows: _controller.model.subjectsAttendance
                      .asMap()
                      .entries
                      .map(
                        (entry) => DataRow(
                          cells: [
                            DataCell(Text((entry.key + 1).toString())),
                            DataCell(Text(entry.value.subjectName)),
                            DataCell(
                                Text(entry.value.attendanceCount.toString())),
                            DataCell(
                                Text(entry.value.notPresentCount.toString())),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
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
