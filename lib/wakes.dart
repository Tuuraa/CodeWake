import 'package:progr_alarm/classes/alarm.dart';

List<Alarm> wakes = [
  Alarm(
      name: "Учеба",
      isActive: true,
      time: const Duration(hours: 9, minutes: 30)),
  Alarm(
      name: "Работа",
      isActive: false,
      time: const Duration(hours: 13, minutes: 50)),
  Alarm(
      name: "Тренировка",
      isActive: true,
      time: const Duration(hours: 21, minutes: 10))
];
