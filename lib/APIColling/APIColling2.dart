
import 'package:flutter/material.dart';
import 'package:ritul/APIColling/APIColing1.dart';
import 'package:ritul/APIColling/Loding.dart';

class AIPColling2 extends StatelessWidget {
  const AIPColling2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body:  FutureBuilder(
        future: APICol(),
        builder: (context,AsyncSnapshot<Map<String,dynamic>?> snapshot) {
         if(snapshot.hasData)
           {
             return Center(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   // Text("userid : ${snapshot.data!["userId"]}"),
                   Text("id : ${snapshot.data!["id"]}"),
                   Text("title : ${snapshot.data!["name"]}"),
                   Text("completed : ${snapshot.data!["username"]}"),
                 ],
               ),
             );
           }
         else if (snapshot.hasError)
           {
             throw Exception("Error ${snapshot.hasError}");
           }
         else
           {
              return Roding();
           }
        },),
    );
  }
}

