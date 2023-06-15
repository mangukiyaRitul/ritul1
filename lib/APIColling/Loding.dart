import 'package:flutter/material.dart';

class Roding extends StatelessWidget {
  const Roding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
