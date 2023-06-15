import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ritul/starmaneg/logic.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provaid = context.watch<LogicPage>();
    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Text("${provaid.count}"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        provaid.decrement();

      },child: Icon(Icons.remove),),
    );
  }
}
