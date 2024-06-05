import 'package:flutter/material.dart';
import 'package:progr_alarm/app.dart';
import 'package:progr_alarm/services/wake_stream.dart';
import 'package:progr_alarm/wakes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AlarmList(),
      child: LaunchApp(),
    ),
  );
  startAlarm();
}
