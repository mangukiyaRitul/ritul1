import 'package:flutter/material.dart';
import 'package:ritul/APIColling/API5Colling/API5CollingFun.dart';
import 'package:ritul/APIColling/API5Colling/API5factary.dart';

class API5ui extends StatelessWidget {
  const API5ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder(
        future: api4colling(),
        builder:  (context,AsyncSnapshot<List<APIColling5model>?> snapshot) {

          if(snapshot.hasData)
            {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final user = snapshot.data!.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal.shade50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text("postId :${user.postid}"),
                        Text("id :${user.id}"),
                        Text("name: ${user.name}"),
                        Text("body :${user.body}"),

                      ]),
                    ),
                  ),
                );
              },);
            }
          else if(snapshot.hasError)
            {
              return Text("Error ${snapshot.error}");
            }
          else
            {
              return CircularProgressIndicator();
            }
        },
      ),
    );
  }
}
