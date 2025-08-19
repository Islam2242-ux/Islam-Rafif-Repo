//file: lib/pages/chapter-1.dart
import 'package:flutter/material.dart';

class Chapter1Page extends StatelessWidget {
  const Chapter1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selamat Datang di Dunia Flutter!'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '1. Apa yang dimaksud dengan Flutter dan apa tujuan utamanya?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Flutter adalah framework open-source dari Google yang digunakan untuk membuat aplikasi mobile, web, dan desktop menggunakan satu basis kode (codebase). Flutter menggunakan bahasa pemrograman Dart.\n\nTujuan utamanya adalah memungkinkan developer untuk membangun aplikasi multiplatform (Android, iOS, web, desktop) dengan satu kali penulisan kode, sehingga lebih efisien waktu dan biaya.',
              ),
              SizedBox(height: 16),
              Text(
                '2. Sebutkan setidaknya tiga keuntungan utama menggunakan Flutter untuk pengembangan aplikasi!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                  '• Satu Basis Kode (Single Codebase)\n→ Tidak perlu menulis kode terpisah untuk Android dan iOS, cukup satu kode untuk semua platform.'),
              Text(
                  '• Hot Reload\n→ Fitur yang memungkinkan perubahan kode langsung terlihat tanpa perlu kompilasi ulang penuh, mempercepat proses pengembangan.'),
              Text(
                  '• UI yang Konsisten dan Kustom\n→ Flutter menyediakan banyak widget bawaan dan kustomisasi tinggi untuk membangun UI yang menarik dan seragam di semua platform.'),
              SizedBox(height: 16),
              Text(
                '3. Jelaskan konsep “Everything is a Widget” dalam Flutter!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                  'Dalam Flutter, semua elemen UI adalah widget. Artinya, baik itu teks, gambar, tombol, padding, layout, hingga animasi — semuanya dianggap sebagai widget.'),
            ],
          ),
        ),
      ),
    );
  }
}
