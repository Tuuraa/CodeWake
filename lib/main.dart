import 'package:flutter/material.dart';
import 'package:progr_alarm/app.dart';
import 'package:progr_alarm/logic/wake_stream.dart';
import 'package:progr_alarm/wakes.dart';

void main() {
  runApp(LaunchApp(alarms: wakes));
  run();
}
