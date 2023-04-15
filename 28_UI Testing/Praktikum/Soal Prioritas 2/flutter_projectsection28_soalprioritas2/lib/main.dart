import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Untuk UI Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: const Icon(Icons.check_circle),
       title: const Text('Halaman Untuk UI Testing'),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: const Center(
            child: Text(
              'Disini Kita Belajar UI Testing',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25
              ),
              ),
          ),
          
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 147, 194, 148),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black), label: 'Setting')
        ]),
    );
  }
}