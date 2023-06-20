import 'package:flutter/material.dart';
import 'package:ritul/APIColling/APIColling_Exampal/Apicolling_factory.dart';
import 'package:ritul/APIColling/APIColling_Exampal/apicolling_function.dart';

class APIui extends StatelessWidget {
  const APIui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: apicolexampal(),
          builder:(context,AsyncSnapshot<Aplicollingmodel?> snapshot) {
            if(snapshot.hasData)
              {
                final user = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ui ${user!.id}"),
                      Text("user ${user.userid}"),
                      Text("title ${user.title}"),
                      Text("Completed ${user.completed}"),
                    ],
                  ),
                );
              }
            else if (snapshot.hasError)
              {
                return Text("Error ${snapshot.error}");
              }
            else
              {
                return Center(child: CircularProgressIndicator());
              }
          }, ),
    );
  }
}
