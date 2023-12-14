import 'package:flutter/material.dart';

AppBar CWAppBar() {
  return AppBar(
    flexibleSpace: Container(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'lib/assets/C.png',
          width: 50,
          height: 50,
        ),
      ),
    ),
    backgroundColor: const Color(0xFF0B2F44),
  );
}

MaterialApp CWApp({required Widget body}) {
  return MaterialApp(
    home: Scaffold(
      appBar: CWAppBar(),
      body: body, // Ajoutez le corps ici
    ),
  );
}
