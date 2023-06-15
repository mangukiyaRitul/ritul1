import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ritul/costomradio.dart';

class radio extends StatefulWidget {
  const radio({Key? key}) : super(key: key);

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {

  final List list = [
    "1",
    "2",
    "3",
    "4",
  ];
  int click = 0;
  String selectedSunject = "";
  String selectedSunject2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return  Row(
              children: [
                costomradio(
                  value: list[index],
                  groupValue: selectedSunject,
                  // title: ,
                  onChanged: (value) {
                    setState(() {
                      if(selectedSunject == "")
                        {
                          selectedSunject =value;
                        }
                      else
                        {
                          selectedSunject = "";
                        }
                    });
                  },
                title: Text("data"),
                  // titlesting: list[index],
                ),
                // Text("${list[index]}")
              ],
            );
          },
        ),
      ),
    );
  }
}
