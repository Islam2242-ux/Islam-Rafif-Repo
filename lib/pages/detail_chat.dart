// File: lib/pages/detail_chat.dart
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  // Tambahkan final String contactName
  final String contactName;

  const ChatScreen({
    super.key,
    required this.contactName, // Pastikan ini ada di konstruktor
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contactName),
      ),
      body: Center(
        child: Text('Ini adalah halaman chat dengan $contactName'),
      ),
    );
  }
}