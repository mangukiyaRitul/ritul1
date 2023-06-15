import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ritul/starmaneg/logic.dart';
import 'package:ritul/starmaneg/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provaid = context.watch<LogicPage>();
    final entitlement = Provider.of<LogicPage>(context);
    // final Provaiderred = context.read<Provaider>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context) => Page2(),));
      },child: Icon(Icons.arrow_forward_ios)),
      appBar: AppBar(
        title: Text(" ${provaid.count}"),
      ),
      body: Container(
        child: Column(children: [
          Text("${provaid.count}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(onPressed: () {
              entitlement.increment();
            }, child: Text("Increment")),
            ElevatedButton(onPressed: () {
              entitlement.decrement();
            }, child: Text("Decrement")),
          ],)
        ]),
      ),
    );
  }
}
