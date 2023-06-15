import 'package:flutter/material.dart';

class Snack_Bar extends StatefulWidget {
  const Snack_Bar({super.key});

  @override
  State<Snack_Bar> createState() => _Snack_BarState();
}

class _Snack_BarState extends State<Snack_Bar> {
  bool add =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton.icon(onPressed: (){
            final SnackBar snackBar =SnackBar(content: Text("Ritul"),
            backgroundColor: Colors.red,
            duration: Duration(milliseconds: 1000),);
             ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, icon: Icon(Icons.arrow_drop_up_outlined), label: Text("Snack Bar")),

        Switch(value: add, onChanged: (e){
          setState(() {
            add = e;
          });

        })
        ],
      ),
    );
  }
}
