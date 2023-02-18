import 'package:flutter/material.dart';
import 'package:yazbozapp/sayfalar/anaEkran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XOX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnaEkran(),
      //home: const GameOverScreen(),
      //home: const xoxGameScreen(),
    );
  }
}
