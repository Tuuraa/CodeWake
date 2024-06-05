import 'package:progr_alarm/wakes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progr_alarm/models/alarm.dart';
import 'package:provider/provider.dart';

class AddAlarm extends StatefulWidget {
  AddAlarm({super.key});

  @override
  State<AddAlarm> createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  final int listTileLen = 4;

  Duration time =
      Duration(hours: DateTime.now().hour, minutes: DateTime.now().minute);

  String defaultName = "Будильник";

  String defaultMelody = "Сигнал Тревоги";

  bool defaultRepeatMelody = true;

  bool isRepeatAlarm = false;

  final List<String> items = [
    "Повтор",
    "Название",
    "Мелодия",
    "Повторение сигнала"
  ];

  final List<String> selectedItems = [];
  final List<String> days = ["пн", "вт"];

  @override
  Widget build(BuildContext context) {
    final alarmList = Provider.of<AlarmList>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Добавить будильник",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        backgroundColor: Color.fromARGB(255, 34, 34, 35),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                alarmList.wakes
                    .add(Alarm(name: defaultName, isActive: true, time: time));
                alarmList.notifyListeners();
              });
              Navigator.pop(context);
            },
            child: Text(
              "Добавить",
              style: TextStyle(color: Colors.orange),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                  onDateTimeChanged: (value) {
                    time =
                        new Duration(hours: value.hour, minutes: value.minute);
                  },
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.time,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: CupertinoListSection.insetGrouped(
                  header: const Text('Настройки',
                      style: TextStyle(color: Colors.white)),
                  backgroundColor: Color.fromARGB(255, 29, 29, 29),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFF2C2C2E),
                  ),
                  children: <CupertinoListTile>[
                    CupertinoListTile(
                        title: const Text('Повтор',
                            style: TextStyle(color: Colors.white)),
                        additionalInfo: Text('Никогда',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {}),
                    CupertinoListTile(
                      title: const Text('Название',
                          style: TextStyle(color: Colors.white)),
                      additionalInfo: Text(defaultName,
                          style: TextStyle(color: Colors.white)),
                    ),
                    CupertinoListTile(
                        title: const Text('Мелодия',
                            style: TextStyle(color: Colors.white)),
                        additionalInfo: Text(defaultMelody,
                            style: TextStyle(color: Colors.white)),
                        onTap: () {}),
                    CupertinoListTile(
                        title: const Text('Повторение сигнала',
                            style: TextStyle(color: Colors.white)),
                        additionalInfo: CupertinoSwitch(
                          value: isRepeatAlarm,
                          onChanged: (value) {},
                        ),
                        onTap: () {}),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
