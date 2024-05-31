import 'package:flutter/material.dart';
import 'package:progr_alarm/classes/Alarm.dart';
import 'components/alarm_item.dart';

// ignore: must_be_immutable
class LaunchApp extends StatelessWidget {
  LaunchApp({super.key});

  List alarms = [
    Alarm(
        name: "Учеба",
        isActive: true,
        time: const Duration(hours: 9, minutes: 30)),
    Alarm(
        name: "Работа",
        isActive: true,
        time: const Duration(hours: 13, minutes: 50)),
    Alarm(
        name: "Тренировка",
        isActive: true,
        time: const Duration(hours: 21, minutes: 10))
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
              time: alarms[index].time,
              name: alarms[index].name,
              isActive: alarms[index].isActive,
            ),
          ),
        ),
      ),
    );
  }
}
