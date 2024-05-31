import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlarmItem extends StatelessWidget {
  Duration time;
  String name;
  bool isActive;

  Color activeTextColor = Colors.white;
  Color inactiveTextColor = Colors.grey;

  AlarmItem(
      {super.key,
      required this.time,
      required this.name,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(color: Colors.grey, width: 0.3),
                bottom: BorderSide(color: Colors.grey, width: 0.3))),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  time.toString(),
                  style: TextStyle(
                      color: isActive ? activeTextColor : inactiveTextColor,
                      fontSize: 42,
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(name,
                      style: TextStyle(
                        color: isActive ? activeTextColor : inactiveTextColor,
                        fontSize: 12,
                      )),
                )
              ],
            ),
            const Spacer(),
            Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(value: isActive, onChanged: (value) {}))
          ],
        ),
      ),
    );
  }
}
