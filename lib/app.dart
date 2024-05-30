import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LaunchApp extends StatelessWidget {
  const LaunchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Будильники",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(),
      ),
    );
  }
}
