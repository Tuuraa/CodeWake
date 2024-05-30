import 'package:flutter/material.dart';
import 'components/alarm_item.dart';

// ignore: must_be_immutable
class LaunchApp extends StatelessWidget {
  LaunchApp({super.key});

  List alarms = [
    ["09:00", "Работа", true],
    ["09:00", "Работа", false],
    ["09:00", "Работа", false],
    ["09:00", "Работа", false],
    ["09:00", "Работа", false],
    ["09:00", "Работа", false],
  ];

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
        body: Container(
          child: ListView.builder(
            itemCount: alarms.length,
            itemBuilder: (context, index) => AlarmItem(
              time: alarms[index][0],
              name: alarms[index][1],
              isActive: alarms[index][2],
            ),
          ),
        ),
      ),
    );
  }
}
