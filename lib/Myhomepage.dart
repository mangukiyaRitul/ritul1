import 'package:flutter/material.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({Key? key}) : super(key: key);

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  var namelist= [
    "radio",
    "Snack_Bar",
    "AIPColling1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),

        itemCount: namelist.length,
        itemBuilder: (context, index) {
          return Container(color: Colors.deepOrange,child: TextButton(onPressed: (){
            Navigator.pushNamed(context, namelist[index]);
          }, child:Text(namelist[index]) ),);
        },),
    );
  }
}
