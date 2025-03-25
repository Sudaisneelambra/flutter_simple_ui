import 'package:exp_ui/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pukki pakki poko',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 255, 255, 255), // Change the icon color
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            ListTile(
              title: const Text('Help'),
              leading: const Icon(Icons.help),
              onTap: () {}, 
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              contentPadding: EdgeInsets.only(bottom: 50,left:20),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Body()
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home',tooltip:'home',),
          NavigationDestination(icon: Icon(Icons.business), label: 'Business'),
          NavigationDestination(icon: Icon(Icons.school), label: 'School'),
        ],
        selectedIndex: 1,
      ),
    );
  }
}
