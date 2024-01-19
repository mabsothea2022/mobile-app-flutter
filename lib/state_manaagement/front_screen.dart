import 'package:app2/basic_module/home_screen.dart';
import 'package:app2/basic_module/layout_sceen.dart';
import 'package:app2/none_state/first_screen.dart';
import 'package:app2/state_manaagement/language_constant.dart';
import 'package:app2/state_manaagement/language_login.dart';
import 'package:flutter/material.dart';
import 'package:app2/state_manaagement/counter_logic.dart';
import 'package:app2/state_manaagement/next_screen.dart';
import 'package:app2/state_manaagement/theme_logic.dart';
import 'package:provider/provider.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    int cnt = context.watch<CounterLogic>().count;
    bool dark = context.watch<ThemeLogic>().dark;
    Language lang = context.watch<LanguageLogin>().lang;

    return Scaffold(
      // backgroundColor: dark ? Colors.black : Colors.white,
      appBar: AppBar(
        // backgroundColor:dark ? Colors.blueGrey[800] : Colors.pink,
        title: Text(lang.appName),
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
          IconButton(
            onPressed: () {
              context.read<ThemeLogic>().toggleDark();
            },
            icon: Icon(dark ? Icons.light_mode : Icons.dark_mode),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (x) => NextScreen(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Text(
      //     "Jeffrey Epstein documents unsealed, naming Prince Andrew and former President Clinton",
      //     // style: TextStyle(
      //     //   fontSize: 18 + cnt.toDouble(),
      //     //   // color: dark ? Colors.white: Colors.black,
      //     // ),
      //   ),
      // ),
      body: _buildBody(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Icon(Icons.face, size: 70)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(lang.home),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text(lang.contact),
              trailing: Icon(Icons.navigate_next),
            ),
            ExpansionTile(
              initiallyExpanded: true,
              title: Text(lang.language),
              children: [
                ListTile(
                  leading: Text(
                    "ខ្មែរ",
                    style: TextStyle(fontSize: 12),
                  ),
                  title: Text("ប្ដូរទៅភាសាខ្មែរ"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    context.read<LanguageLogin>().ChangeToKhmer();
                  },
                ),
                ListTile(
                  leading: Text(
                    "EN",
                    style: TextStyle(fontSize: 12),
                  ),
                  title: Text("Change To English"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    context.read<LanguageLogin>().ChangeToEnglish();
                  },
                ),
                ListTile(
                  leading: Text(
                    "中国人",
                    style: TextStyle(fontSize: 12),
                  ),
                  title: Text("换成中文"),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    context.read<LanguageLogin>().ChangeToChines();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildButtom(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentindex,
      children: [
        HomeScreen(),
        LayoutScreen(),
        FirstScreen(),
      ],
    );
  }

  int _currentindex = 0;
  Widget _buildButtom() {
    return BottomNavigationBar(
      currentIndex: _currentindex,
      onTap: (index) {
        setState(() {
          _currentindex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Menu")
      ],
    );
  }
}
