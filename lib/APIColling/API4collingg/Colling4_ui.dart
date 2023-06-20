import 'package:flutter/material.dart';
import 'package:ritul/APIColling/API4collingg/Collin4_factoriy.dart';
import 'package:ritul/APIColling/API4collingg/Colling4_function.dart';

class APIcolling5 extends StatelessWidget {
  const APIcolling5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apiColling_4(),
        builder:(context,AsyncSnapshot<API4User?> snapshot) {

        if(snapshot.hasData)
          {
            final user = snapshot.data;
            return  Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                Text("ui ${user!.id}"),
                Text("user ${user.user}"),
                Text("title ${user.title}"),
                Text("Completed ${user.completed}"),
              ],),
            );
          }
        else if (snapshot.hasError)
          {
            return Text(" Ritul ${snapshot.error}");
          }
        else
          {
            return Center(child: CircularProgressIndicator());
          }
      },)

    );
  }
}
