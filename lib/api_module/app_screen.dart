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
    return Future.delayed(Duration(seconds: 5), () {
      return "Some Data from getFakeData method";
    });
  }

  // Future<String> _getAPI() async {
  //   try {
  //     http.Response response = await http
  //         .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API SCREEN"),
        shadowColor: Colors.grey,
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _getFakeData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text("${snapshot.data}");
            } else {
              return SpinKitWave(
                color: Colors.pink,
              );
              // return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
