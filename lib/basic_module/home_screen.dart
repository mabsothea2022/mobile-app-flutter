import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // // body: Center(
      //   // chile : for khmer font
      //   // child: Text(
      //   //   "បាវចនា",
      //   //   style: GoogleFonts.siemreap(fontSize: 50),
      //   // ),
      //   child: Text(
      //     "Kingdom Of Cambodia",
      //     style: GoogleFonts.siemreap(fontSize: 25),
      //   ),
      // ),
      // ------------------------------------------------------------
      // body: Container(
      //   color: Colors.lime,
      //   width: double.maxFinite,
      //   height: double.maxFinite,
      //   alignment: Alignment.bottomCenter,
      //   margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      //   padding: EdgeInsets.only(bottom: 50, left: 30),
      //   child: Text(
      //     "Hello",
      //     style: TextStyle(fontSize: 50),
      //   ),
      //   transformAlignment: Alignment.center,
      //   transform: Matrix4.rotationZ(0.4),
      // ),
      // ------------------------------------------------------------
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(keyboardType: TextInputType.number),
              )
            ],
          ),

          //   child: Container(
          //     width: 300,
          //     height: 200,
          //     // alignment: Alignment.buttomCenter,
          //     transformAlignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: Colors.pink,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          // child: Container(
          //   width: 200.0,
          //   height: 200.0,
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //           Colors.pink,
          //           Colors.red,
          //           Colors.orange,
          //         ],
          //       ),
          //       color: Colors.deepPurple,
          //       shape: BoxShape.circle,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.red.withOpacity(0.5),
          //           offset: Offset(15.0, 15.0),
          //           blurRadius: 10.0,
          //         ),
          //       ]),
          // ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // backgroundColor: Colors.pink,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.search),
        //   onPressed: () {
        //     _scaffoldKey.currentState!.openDrawer();
        //   },
        // ),
        title: Text("Flutter App"),
        // centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(CupertinoIcons.arrowshape_turn_up_right_fill),
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(FontAwesomeIcons.facebookMessenger),
        //   ),
        // ],
      ),
      // drawer: Drawer(
      //   child: Image.network(
      //     "https://cdn1.clickthecity.com/images/movies/poster/600/19049_1.jpg",
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // endDrawer: Drawer(
      //   child: Image.network(
      //     "https://cdn1.clickthecity.com/images/movies/poster/600/19049_1.jpg",
      //     fit: BoxFit.cover,
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 255, 191, 0),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
