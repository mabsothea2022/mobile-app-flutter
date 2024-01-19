import 'package:app2/api_module/app_screen.dart';
import 'package:flutter/material.dart';

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiScreen(),
      darkTheme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
