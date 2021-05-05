import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:performance_app/HomeScreen/BottomBar/bottom_bar.dart';
import 'package:performance_app/HomeScreen/home_screen.dart';
import 'package:performance_app/TasksScreen/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TaskScreen(),
    Text("Hello"),
    HomeScreen(),
  ];

  List<IconData> items = [
    CupertinoIcons.time,
    CupertinoIcons.checkmark_square,
    CupertinoIcons.chat_bubble,
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(child: Stack(
          children: [
            _widgetOptions[_selectedIndex],
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: BottomBar(
              items: items,
              onTap: _itemTapped,
              currentIndex: _selectedIndex,
            ),)
          ],
        )));
  }
}
