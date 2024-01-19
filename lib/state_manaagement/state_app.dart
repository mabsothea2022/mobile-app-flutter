import 'package:app2/state_manaagement/language_login.dart';
import 'package:flutter/material.dart';
import 'package:app2/state_manaagement/counter_logic.dart';
import 'package:app2/state_manaagement/front_screen.dart';
import 'package:app2/state_manaagement/theme_logic.dart';
import 'package:provider/provider.dart';

Widget stateAppWithProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (x) => CounterLogic()),
      ChangeNotifierProvider(create: (x) => ThemeLogic()),
      ChangeNotifierProvider(create: (c)=>LanguageLogin())
    ],
    child: StateApp(),
  );
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().count;
    bool dark = context.watch<ThemeLogic>().dark;

    return MaterialApp(
      home: FrontScreen(),
      themeMode: dark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
        ),
        canvasColor: Colors.grey[100],
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 17 + counter.toDouble())
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        canvasColor: Colors.black,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 17 + counter.toDouble())
        ),
      ),
    );
  }
}
