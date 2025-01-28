import 'package:flutter/material.dart';

import '../Controller/school_report_controller.dart';

class SchoolReportView extends StatefulWidget {
  const SchoolReportView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SchoolReportViewState createState() => _SchoolReportViewState();
}

class _SchoolReportViewState extends State<SchoolReportView> {
  final SchoolReportController _controller = SchoolReportController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Report"),
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
                    DataColumn(label: Text("Subject")),
                    DataColumn(label: Text("Minimal Criteria")),
                    DataColumn(label: Text("Number")),
                    DataColumn(label: Text("Level")),
                  ],
                  rows: _controller.model.subjectsReport
                      .asMap()
                      .entries
                      .map(
                        (entry) => DataRow(
                          cells: [
                            DataCell(Text((entry.key + 1).toString())),
                            DataCell(Text(entry.value.subjectName)),
                            DataCell(
                                Text(entry.value.minimalCriteria.toString())),
                            DataCell(Text(entry.value.number.toString())),
                            DataCell(Text(entry.value.level)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                "*If you want to see everything, please download and print.",
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: IconButton(
                onPressed: () {
                  // Aksi ketika tombol download ditekan
                },
                icon: Icon(Icons.download),
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
