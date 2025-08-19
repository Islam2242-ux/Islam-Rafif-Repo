import 'pages/chapter-1.dart';
import 'pages/chapter-2.dart';
import 'pages/chapter-3.dart';
import 'pages/chapter-4.dart';
import 'pages/chapter-6.dart';
import 'pages/chapter-7.dart';
import 'package:flutter/material.dart'; // Mengimpor paket Material Design dari Flutter.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainNavbar(),
    );
  }
}

class MainNavbar extends StatefulWidget {
  const MainNavbar({super.key});

  @override
  State<MainNavbar> createState() => _MainNavbarState();
}

class _MainNavbarState extends State<MainNavbar> {
  int _selectedIndex = 0;

  static const List<String> _titles = [
    'Chapter 1',
    'Chapter 2',
    'Chapter 3',
    'Chapter 4',
    'Chapter 5',
    'Chapter 6',
    'Chapter 7',
    'Chapter 8',
  ];

  static final List<Widget> _pages = [
    Chapter1Page(),
    Chapter2Page(),
    Chapter3Page(),
    Chapter4Page(),
    Center(child: Text('Chapter 5', style: TextStyle(fontSize: 24))),
    Chapter6Page(),
    Chapter7Page(),
    Center(child: Text('Chapter 8', style: TextStyle(fontSize: 24))),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Ch.1'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Ch.2'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Ch.3'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_4), label: 'Ch.4'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_5), label: 'Ch.5'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_6), label: 'Ch.6'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_7), label: 'Ch.7'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_8), label: 'Ch.8'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
