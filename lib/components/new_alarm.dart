import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAlarm extends StatelessWidget {
  const AddAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Добавить будильник",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        backgroundColor: Color.fromARGB(255, 14, 13, 13),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.orange),
            onPressed: () => Navigator.pop(context)),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text("Добавить", style: TextStyle(color: Colors.orange)))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
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
                      print(value);
                    },
                    use24hFormat: true,
                    mode: CupertinoDatePickerMode.time,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              color: Colors.grey,
              child: Text("hjwedawd"),
            )
          ],
        ),
      ),
    );
  }
}
