// ...............

import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/account_page.dart';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';
import 'pages/list_chat.dart';
import 'pages/detail_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginPage',
      routes: {
        'LoginPage': (context) => const LoginPage(),
        'AccountPage': (context) => const AccountPage(),
        'CartPage': (context) => const CartPage(),
        'HomePage': (context) => const Homepage(),
        "ListChat": (context) => ChatListPage(),
        "ChatDetail": (context) => ChatScreen(contactName: 'Nike Official'),
      },
    );
  }
}
