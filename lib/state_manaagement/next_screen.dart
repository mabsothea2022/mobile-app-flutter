import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_logic.dart';
import 'theme_logic.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().count;
    bool dark = context.watch<ThemeLogic>().dark;

    return Scaffold(
      // backgroundColor: dark ? Colors.grey[800] : Colors.white,
      appBar: AppBar(
        // backgroundColor: dark ? Colors.blueGrey[800] : Colors.pink,
        title: Text("Next Screen"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().decrease();
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().increase();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Text(
          "More than 100 people killed in twin blasts near slain Iran commander’s grave",
          // style: TextStyle(
          //   fontSize: 18 + counter.toDouble(),
          //   // color: dark ? Colors.white: Colors.black,
          // ),
        ),
      ),
    );
  }
}
