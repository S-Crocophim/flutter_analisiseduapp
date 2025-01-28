import 'package:flutter/material.dart';
import '../Controller/faqs_controller.dart';

class FAQsView extends StatefulWidget {
  const FAQsView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FAQsViewState createState() => _FAQsViewState();
}

class _FAQsViewState extends State<FAQsView> {
  final FAQsController _controller = FAQsController();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ's"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Type your question below or click a picture",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Frequently asked questions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _controller.model.faqs.length,
                itemBuilder: (context, index) {
                  final faq = _controller.model.faqs[index];
                  return Card(
                    child: ListTile(
                      title: Text(faq.question),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Aksi ketika FAQ dipilih (misal: navigasi ke halaman detail)
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
        currentIndex: 2, // Index halaman yang aktif (FAQs)
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
