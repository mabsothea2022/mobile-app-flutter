import 'package:app2/basic_module/detail_screen.dart';
import 'package:app2/basic_module/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NetflixScreen_HomeWork extends StatefulWidget {
  // Remove the 'const' keyword from the constructor
  NetflixScreen_HomeWork({Key? key}) : super(key: key);

  @override
  State<NetflixScreen_HomeWork> createState() => _NetflixScreen_HomeWorkState();
}

class _NetflixScreen_HomeWorkState extends State<NetflixScreen_HomeWork> {
  String _text = "Netflix";
  bool _dark = true; // _ refer to private varaible
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _dark ? Colors.black : Colors.grey[300],
      appBar: AppBar(
        title: Text("Netflix"),
        backgroundColor: _dark ? Colors.blueGrey : Colors.pink,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _dark = !_dark;
              });
              print(_text);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
            },
            icon: Icon(_dark ? Icons.light_mode : Icons.dark_mode),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _text = "How are you?";
              });
              print(_text);
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: _buildMainListView(context),
    );
  }

  Widget _buildMainListView(context) {
    return ListView(
      children: [
        _buildListView1(context),
        _buildListView2(),
      ],
    );
  }

  Widget _buildListView1(context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _imageList
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(e),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(e),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildListView2() {
    return SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _imageList
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(e),
                  ),
                ))
            .toList(),
      ),
    );
  }

  // List
  List<String> _imageList = [
    "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_0e9b544c.jpeg",
    "https://m.media-amazon.com/images/M/MV5BMjY5MTI3OGEtMTgyYy00ODM0LWIzNGQtNTdmYjE0MDY3MjE3XkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_.jpg",
    "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png",
    "https://lh3.googleusercontent.com/LaJTuwSjDsjadl7Lbf696SvBu12DnNzoWWFujr51BRgC0mqGCNM6B3jyohaLn78mCX67w6jolYvRbkUn3yyHVWSh09A_xj89b_JYPYY=s800-rw",
    "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_FMjpg_UX1000_.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_0e9b544c.jpeg",
    "https://m.media-amazon.com/images/M/MV5BMjY5MTI3OGEtMTgyYy00ODM0LWIzNGQtNTdmYjE0MDY3MjE3XkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_.jpg",
    "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png",
    "https://lh3.googleusercontent.com/LaJTuwSjDsjadl7Lbf696SvBu12DnNzoWWFujr51BRgC0mqGCNM6B3jyohaLn78mCX67w6jolYvRbkUn3yyHVWSh09A_xj89b_JYPYY=s800-rw",
    "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_FMjpg_UX1000_.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_0e9b544c.jpeg",
    "https://m.media-amazon.com/images/M/MV5BMjY5MTI3OGEtMTgyYy00ODM0LWIzNGQtNTdmYjE0MDY3MjE3XkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_.jpg",
    "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png",
    "https://lh3.googleusercontent.com/LaJTuwSjDsjadl7Lbf696SvBu12DnNzoWWFujr51BRgC0mqGCNM6B3jyohaLn78mCX67w6jolYvRbkUn3yyHVWSh09A_xj89b_JYPYY=s800-rw",
    "https://m.media-amazon.com/images/M/MV5BNzg1MDQxMTQ2OF5BMl5BanBnXkFtZTcwMTk3MjAzOQ@@._V1_FMjpg_UX1000_.jpg",
  ];
}
