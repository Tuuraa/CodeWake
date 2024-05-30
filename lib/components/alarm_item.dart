import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlarmItem extends StatefulWidget {
  String time;
  String name;
  bool isActive;

  AlarmItem(
      {super.key,
      required this.time,
      required this.name,
      required this.isActive});

  @override
  State<AlarmItem> createState() => _AlarmItemState();
}

class _AlarmItemState extends State<AlarmItem> {
  Color activeTextColor = Colors.white;

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
                  widget.time,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 42,
                      fontWeight: FontWeight.w300),
                ),
                Text(widget.name)
              ],
            ),
            const Spacer(),
            CupertinoSwitch(value: widget.isActive, onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
