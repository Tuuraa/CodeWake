import 'package:flutter/material.dart';
import 'package:progr_alarm/components/new_alarm.dart';
import 'package:progr_alarm/pages/home.dart';
import 'package:progr_alarm/pages/profile.dart';
import 'package:progr_alarm/pages/settings.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LaunchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> widgets = [Profile(), Home(), Settings()];
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Будильники",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.create,
            color: Colors.orange,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => _displayBottomSheet(context),
            icon: const Icon(
              Icons.add,
              color: Colors.orange,
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: widgets[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: GNav(
          gap: 10,
          selectedIndex: _selectedIndex,
          onTabChange: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(15),
          tabs: const [
            GButton(
              icon: Icons.person,
              text: "Профиль",
            ),
            GButton(icon: Icons.home, text: "Будильники"),
            GButton(icon: Icons.settings, text: "Настройки")
          ],
        ),
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            child: AddAlarm(),
          ));
}
