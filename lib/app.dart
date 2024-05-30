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
          title: const Text(
            "Будильники",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
          backgroundColor: Colors.black,
        ),
        body: Container(),
      ),
    );
  }
}
