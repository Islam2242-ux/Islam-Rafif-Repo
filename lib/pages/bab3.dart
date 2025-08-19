// File: lib/pages/login_page.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bab3 extends StatelessWidget {
  const bab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('SAYYAR'),
          Text('Student'),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.facebook, // Ganti dengan ikon yang tersedia
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 20),
              Icon(
                FontAwesomeIcons.github, // Contoh ikon GitHub
                color: Colors.black,
                size: 30,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.local_airport_outlined, // Contoh ikon Facebook
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.delete, // Contoh ikon Facebook
                color: Colors.blue,
                size: 30,
              ),
            ],
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/New mewang 1.png',
            width: 200,
            height: 200,
          )
        ]),
      ),
    );
  }
}
