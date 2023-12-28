import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  // const LayoutSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buttonRow(),
    );
  }

  //
  List<Widget> _items = [
    Container(color: const Color.fromARGB(255, 140, 106, 117), width: 40, height: 70),
    Container(color: Colors.blue, width: 60, height: 80),
    Container(color: Colors.black, width: 80, height: 90),
    Container(color: Colors.orange, width: 100, height: 100),
    Container(color: Colors.indigo, width: 120, height: 110),
  ];

  // Widget for Column
  Widget _buttonColumn() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _items,
      ),
    );
  }

  Widget _test() {
    return Center(
      child: Container(
        color: Colors.red.withOpacity(0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.pink, width: 40, height: 70),
            Container(color: Colors.blue, width: 60, height: 80),
            Container(color: Colors.black, width: 80, height: 90),
            Container(color: Colors.orange, width: 100, height: 100),
            Container(color: Colors.indigo, width: 120, height: 110),
          ],
        ),
      ),
    );
  }

  // Widget for Row
  Widget _buttonRow() {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: _items,
      ),
    );
  }

  // Widget for Row
  Widget _buttonList() {
    return Center(
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: _items,
      ),
    );
  }

  // Widget for PageView
  Widget _buttonPage() {
    return Center(
      child: PageView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: _items,
      ),
    );
  }
}
