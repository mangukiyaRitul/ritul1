import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritul/APIColling/APIColling2.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AIPColling1 extends StatelessWidget {
  const AIPColling1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                APICol();
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => AIPColling2(),
                    ));
              },
              child: Text("Next Page"))),
    );
  }
}

Future<Map<String, dynamic>?> APICol() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");

  try {
    Response response = await http.get(url);
    debugPrint("response ${response.body}");
    debugPrint("response ${response.statusCode}");

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
