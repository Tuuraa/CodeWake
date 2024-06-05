import 'package:flutter/foundation.dart';
import 'package:progr_alarm/models/alarm.dart';

class AlarmList extends ChangeNotifier {
  List<Alarm> _wakes = [
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

  List<Alarm> get wakes => _wakes;

  set wakes(List<Alarm> value) {
    _wakes = value;
    notifyListeners();
  }
}
