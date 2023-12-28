import 'package:app2/basic_module/detail_screen.dart';
import 'package:app2/basic_module/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NetflixScreen_HomeWork extends StatelessWidget {
  // Remove the 'const' keyword from the constructor
  NetflixScreen_HomeWork({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netflix"),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
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
