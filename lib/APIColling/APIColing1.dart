import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritul/APIColling/AIPColling3/AIPColling3.dart';
import 'package:ritul/APIColling/API4collingg/Colling4_ui.dart';
import 'package:ritul/APIColling/API5Colling/API5home.dart';
import 'package:ritul/APIColling/APIColling2.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:ritul/APIColling/APIColling_Exampal/ApiColling_Ui.dart';
import 'package:ritul/APIColling/APIcolling2.1.dart';
import 'package:ritul/APIColling/Exam/Exam%20Epi.dart';

class AIPColling1 extends StatelessWidget {
  const AIPColling1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => AIPColling2(),
                        ));
                  },
                  child: Text("Api Colling 2")),
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => APIColling2_1(),
                        ));
                  },
                  child: Text("Api Colling 2.1")),
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => Apicolling_3(),
                        ));
                  },
                  child: Text("Api Colling 3")),
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>  ExamApi4()
                        ));
                  },
                  child: Text("Api Colling 4")),
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>  APIcolling5(),
                        ));
                  },
                  child: Text("Api Colling 5")),
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>  APIui(),
                        ));
                  },
                  child: Text("Exampal")),
              ElevatedButton(
                  onPressed: () {
                    APICol();
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>  API5ui(),
                        ));
                  },
                  child: Text("API5ui")),
            ],
          )),
    );
  }
}

Future<Map<String, dynamic>?> APICol() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");

  try {
    Response response = await http.get(url);
    // debugPrint("response ${response.body}");
   // ? debugPrint("response ${response.statusCode}");

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
