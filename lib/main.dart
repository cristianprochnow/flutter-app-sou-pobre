import 'package:flutter/material.dart';

void main() {
  Color? backgroundGrey = Colors.blueGrey[900];

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: backgroundGrey,
      appBar: AppBar(
        backgroundColor: backgroundGrey,
        title: const Center(
          child: Text("Sou Pobre"),
        ),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/images/diamond.png'),
        ),
      ),
    ),
  ));
}
