

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ritul/APIColling/Loding.dart';

class APIColling2_1 extends StatefulWidget {
  const APIColling2_1({super.key});

  @override
  State<APIColling2_1> createState() => _APIColling2_1State();
}

class _APIColling2_1State extends State<APIColling2_1> {

  @override
  void initState() {
    APICol2();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AIPColling List 2.1"),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: FutureBuilder  (
          future: APICol2(),
          builder: (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
            if(snapshot.hasData)
              {
                return  ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final user =  snapshot.data![index];
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      color: Colors.tealAccent.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("userId : ${user["userId"]}"),
                          Text("id : ${user["id"]}"),
                          Text("title : ${user["title"]}"),
                          Text("body : ${user["body"]}"),
                        ],
                      ),

                    ),
                  );
                },);
              }
            else if (snapshot.hasError) {
                return Text("Error : ${snapshot.hasError}");
            }
            else {
                return Roding();
            }


        },),
      ),
    );
  }
}

 Future<List<Map<String,dynamic>>?> APICol2() async {

  final Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
 try{
   Response respone = await get(uri);

   log("code ${respone.statusCode}");
   log("Body ${respone.body}");

   if(respone.statusCode == 200)
   {
     final list = jsonDecode(respone.body);
     debugPrint("List ${list}");
     final result = List<Map<String,dynamic>>.from(list);
     return result;
   }
   else
   {
     return null;
   }
 }
 catch(e){
   Text("Error : ${e}");
 }

}
