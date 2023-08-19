import 'package:flutter/material.dart';

void main() {
  Color? backgroundGrey = Colors.blueGrey[900];
  Color? backgroundAccent = Colors.white;

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
      floatingActionButton: AlertButton(
        backgroundColor: backgroundAccent,
        foregroundColor: backgroundGrey,
      )
    ),
  ));
}

class AlertButton extends StatelessWidget {
  Color? backgroundColor;
  Color? foregroundColor;

  AlertButton({ super.key, this.backgroundColor, this.foregroundColor });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Tamo aí na atividade"),
          content: const Text("Dias de luta, dias de glória!"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text("Show!"),
            )
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      child: const Icon(Icons.diamond),
    );
  }
}