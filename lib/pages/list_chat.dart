// File: lib/pages/login_page.dart
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman List'),
      ),
    );
  }
}