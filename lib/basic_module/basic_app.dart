import 'package:app2/basic_module/netflix_layout_screen(HomeWork).dart';
import 'package:flutter/material.dart';

// For name for (st) don't write basicapp, Basic_App
class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixScreen_HomeWork(),
    );
  }
}
