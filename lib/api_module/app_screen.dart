import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  Future<String> _getFakeData() {
    return Future.delayed(Duration(seconds: 3), () {
      return "Some Data from getFakeData method";
    });
  }

  Future<List<Map<String, dynamic>>> _getAPI() async {
    try {
      http.Response response =
          await http.get(Uri.parse("https://fakestoreapi.com/products"));
      return compute(_convertAPI, response.body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Api Screen"),
      ),
      body: Center(
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _getAPI(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return _buildListView(snapshot.data ?? []);
            } else {
              return SpinKitThreeBounce(
                color: Colors.pink,
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildListView(List<Map<String, dynamic>> list) {
    return ListView(
      children: list.map((e) => _buildItem(e)).toList(),
    );
  }

  Widget _buildItem(Map<String, dynamic> item) {
    return Card(
      child: ListTile(
        title: Text(
          item["title"],
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Image.network(item["image"]),
      ),
    );
  }
}

List<Map<String, dynamic>> _convertAPI(String body) {
  List list = json.decode(body);
  List<Map<String, dynamic>> items =
      list.map((e) => e as Map<String, dynamic>).toList();
  return items;
}
