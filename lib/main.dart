import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn UI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String certificateImageUrl =
      'https://media.istockphoto.com/id/1128426035/vector/elegant-blue-and-gold-diploma-certificate-template.jpg?s=612x612&w=0&k=20&c=u6nl2YC0OfpYpcNS3C97EZhgaJKs4IVh-Tc0a55M-wc='; // ✅ WORKING IMAGE

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        actions: const [Icon(Icons.notifications_none)],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Md. Mezbaul Islam Zion"),
              accountEmail: Text("Lecturer | Flutter Developer | Laravel Developer"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/65642391?v=4'), 
              ),
            ),
            ListTile(title: Text("Puzzle games")),
            ListTile(title: Text("Saved posts")),
            ListTile(title: Text("Groups")),
            Divider(),
            ListTile(title: Text("Try Premium for BDT250")),
            ListTile(title: Text("Settings")),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    leading: CircleAvatar(),
                    title: Text("Mezbaul Islam Zion", style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Software Quality Assurance Professional"),
                  ),
                  const Text(
                    "I'm excited to share that I've successfully completed the Software Quality Assurance – Manual Course (Batch 2) at nfluxdev!",
                  ),
                  const SizedBox(height: 10),
                  Image.network(
                    certificateImageUrl,
                    errorBuilder: (context, error, stackTrace) => const Text("Image failed to load"),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.thumb_up_alt_outlined),
                      Icon(Icons.comment_outlined),
                      Icon(Icons.repeat),
                      Icon(Icons.send_outlined),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Card(
            child: ListTile(
              leading: Icon(Icons.work_outline),
              title: Text("Personalize your job search"),
              subtitle: Text("Filter jobs by location, experience, benefits..."),
              trailing: TextButton(child: Text("More"), onPressed: null),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'My Network'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
