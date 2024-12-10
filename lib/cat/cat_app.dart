import 'package:flutter/material.dart';

import '../splash_screen.dart';

class CatApp extends StatelessWidget {
  const CatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
