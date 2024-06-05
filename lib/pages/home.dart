import 'package:flutter/material.dart';
import 'package:progr_alarm/models/alarm.dart';
import 'package:progr_alarm/components/alarm_item.dart';
import 'package:progr_alarm/wakes.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _LaunchAppState();
}

class _LaunchAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final alarmList = Provider.of<AlarmList>(context);

    void deleteAlarm(BuildContext? context, int index) {
      setState(() {
        alarmList.wakes.removeAt(index);
        alarmList.notifyListeners();
      });
    }

    void switchPressed(bool? value, int index) {
      setState(() {
        alarmList.wakes[index].isActive = !alarmList.wakes[index].isActive;
        alarmList.notifyListeners();
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: alarmList.wakes.length,
        itemBuilder: (context, index) => AlarmItem(
          time: alarmList.wakes[index].time,
          name: alarmList.wakes[index].name,
          isActive: alarmList.wakes[index].isActive,
          switchPressed: (value) => switchPressed(value, index),
          onDelete: (context) => deleteAlarm(context, index),
        ),
      ),
    );
  }
}
