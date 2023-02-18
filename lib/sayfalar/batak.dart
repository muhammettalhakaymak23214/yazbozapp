import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Batak extends StatefulWidget {
  const Batak({super.key});

  @override
  State<Batak> createState() => _BatakState();
}

class _BatakState extends State<Batak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("Batak"),
      ),
    );
  }
}
