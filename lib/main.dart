import 'package:flutter/material.dart'; // Mengimpor paket Material Design dari Flutter.

void main() {
  // Setiap program Dart dimulai dari fungsi
  main();
  runApp(
    MaterialApp(
      // MaterialApp adalah widget dasar untuk aplikasi yang mengikuti pedoman Material Design.
      home: Scaffold(
        // Scaffold menyediakan struktur visual dasar untuk aplikasi (misalnya AppBar, body).
        appBar: AppBar(
          // AppBar adalah bilah di bagian atas layar.
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          // Center widget menempatkan anakannya di tengah-tengah.
          child: Text(
            'Hello, World from Flutter!', // Teks yang akan ditampilkan.
            style:
                TextStyle(fontSize: 24), // Gaya teks 14 dengan ukuran font 24.
          ),
        ),
      ),
    ),
  );
}
