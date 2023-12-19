import 'package:cinewave/appbar.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'bottombar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CWApp(
      body: Popular(),
      bottomNavigationBar: MyBottomNavigationBar(), // Ajoutez la barre de navigation inférieure ici
    );
  }
}

class CWApp extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;

  const CWApp({Key? key, required this.body, this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CWAppBar(),
        body: body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
