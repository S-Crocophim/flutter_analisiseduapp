import 'package:flutter/material.dart';
import '../Controller/school_events_controller.dart';

class SchoolEventsView extends StatefulWidget {
  const SchoolEventsView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SchoolEventsViewState createState() => _SchoolEventsViewState();
}

class _SchoolEventsViewState extends State<SchoolEventsView> {
  final SchoolEventsController _controller = SchoolEventsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Events"),
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
                itemCount: _controller.model.events.length,
                itemBuilder: (context, index) {
                  final event = _controller.model.events[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.info, color: Colors.blue),
                              SizedBox(width: 8),
                              Text(
                                event.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(event.description),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi ketika tombol "Full View" ditekan
                            },
                            child: Text(event.buttonText),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol "Previous" ditekan
                  },
                  child: Text("Previous"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol "Next" ditekan
                  },
                  child: Text("Next"),
                ),
              ],
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
