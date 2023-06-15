import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ritul/APIColling/APIColing1.dart';
import 'package:ritul/APIColling/APIColling2.dart';
import 'package:ritul/pageviwe.dart';
import 'package:ritul/snackbar.dart';
import 'package:ritul/starmaneg/logic.dart';
import 'package:ritul/starmaneg/page1.dart';
import 'Myhomepage.dart';

void main() {


  runApp(

      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) =>  LogicPage()),
          ],
      child: MyApp(),
      ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),

      routes: {
        "radio":(context) => radio(),
        "Snack_Bar":(context) => Snack_Bar(),
        "AIPColling1":(context) => AIPColling1(),
      },
      home:  myhomepage(),
      // home:  Page1(),
    );
  }
}

