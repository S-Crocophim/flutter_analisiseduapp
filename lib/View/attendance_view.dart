// Suggested code may be subject to a license. Learn more: ~LicenseLog:3731656355.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2855362685.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1315794036.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3184644275.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3129517202.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1665778888.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3764047475.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1761141207.
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
        title: const Text("Attendance"),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 228, 227, 227)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text(
              "Hi Iqbal,",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
              const SizedBox(height: 8),
            Text(
              "You have missed ${_controller.model.totalMissedAttendance} attendance!",
                style: const TextStyle(fontSize: 16, color: Colors.red),
            ),
              const SizedBox(height: 20),
            // Tabel Attendance
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                    columns: const [
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
                              DataCell(Text(
                                  entry.value.attendanceCount.toString())),
                              DataCell(Text(
                                  entry.value.notPresentCount.toString())),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Index halaman yang aktif (Home)
        onTap: (index) {
          // Aksi ketika item di bottomNavigationBar ditekan
        },
        items: const [
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
