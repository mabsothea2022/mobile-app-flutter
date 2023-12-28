import 'package:flutter/material.dart';

class NetflixScreen extends StatelessWidget {
  // Remove the 'const' keyword from the constructor
  NetflixScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Netflix"),
      ),
      body: _buildMainListView(context),
    );
  }

  Widget _buildMainListView(context) {
    return ListView(
      children: [
        _buildListView1(), 
        _buildListView2(), 
        _buildListView3()],
    );
  }

  Widget _buildListView1() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal, // Scoll left to right
        children: _imageList.map((e) => Image.network(e)).toList(),
      ),
    );
  }

  Widget _buildListView2() {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal, // Scoll left to right
        children: _imageList.map((e) => Image.network(e)).toList(),
      ),
    );
  }

  Widget _buildListView3() {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal, // Scoll left to right
        children: _imageList.map((e) => Image.network(e)).toList(),
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
