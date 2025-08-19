import 'package:flutter/material.dart';

class Chapter3Page extends StatelessWidget {
  const Chapter3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persiapan Flutter Development Environment'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Foto profil
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/Me.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                // Nama lengkap
                const Text(
                  'Nama Lengkap: Rafif Pranaja Arliansyah',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                // Profesi
                const Text(
                  'Profesi: Student & Flutter Enthusiast',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                // Ikon media sosial
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.facebook, color: Colors.blue, size: 32),
                    SizedBox(width: 24),
                    Icon(Icons.email, color: Colors.red, size: 32),
                    SizedBox(width: 24),
                    Icon(Icons.phone, color: Colors.green, size: 32),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
