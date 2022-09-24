import 'package:flutter/material.dart';
import 'package:not_wave/screens/home_screen.dart';
import 'package:not_wave/screens/transaction_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not Wave Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TransactionDetailScreen(),
    );
  }
}
