import 'package:flutter/material.dart';
import 'first_screen.dart';

class NoneStateApp extends StatelessWidget {
  const NoneStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
