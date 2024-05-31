import 'package:flutter/material.dart';
import 'package:progr_alarm/classes/alarm.dart';
import 'components/alarm_item.dart';

// ignore: must_be_immutable
class LaunchApp extends StatefulWidget {
  List<Alarm> alarms;

  LaunchApp({super.key, required this.alarms});

  @override
  State<LaunchApp> createState() => _LaunchAppState();
}

class _LaunchAppState extends State<LaunchApp> {
  void deleteAlarm(BuildContext? context, int index) {
    setState(() {
      widget.alarms.removeAt(index);
    });
  }

  void switchPressed(bool? value, int index) {
    setState(() {
      widget.alarms[index].isActive = !widget.alarms[index].isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Будильники",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.create,
              color: Colors.orange,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.orange,
                ))
          ],
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: widget.alarms.length,
          itemBuilder: (context, index) => AlarmItem(
            time: widget.alarms[index].time,
            name: widget.alarms[index].name,
            isActive: widget.alarms[index].isActive,
            switchPressed: (value) => switchPressed(value, index),
            onDelete: (context) => deleteAlarm(context, index),
          ),
        ),
      ),
    );
  }
}
