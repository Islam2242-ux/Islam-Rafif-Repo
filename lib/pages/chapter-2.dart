import 'package:flutter/material.dart';

class Chapter2Page extends StatelessWidget {
  const Chapter2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata Saya'),
        backgroundColor: Colors.teal, // Ganti warna sesuai keinginan
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nama: Rafif Pranaja Arliansyah',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 16),
            Text(
              'Kelas: XI RPL',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
