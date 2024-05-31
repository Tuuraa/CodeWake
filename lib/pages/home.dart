import 'package:flutter/material.dart';
import 'package:progr_alarm/classes/alarm.dart';
import 'package:progr_alarm/components/alarm_item.dart';
import 'package:progr_alarm/wakes.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  List<Alarm> alarms = wakes;

  Home({super.key});

  @override
  State<Home> createState() => _LaunchAppState();
}

class _LaunchAppState extends State<Home> {
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
    return Scaffold(
      backgroundColor: Colors.black,
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
    );
  }
}
