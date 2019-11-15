import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          bottomAppBarColor: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          bottomAppBarColor: Colors.black,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hello"),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
            backgroundColor: Colors.red,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.whatshot),
                  onPressed: () {},
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                  iconSize: 30,
                )
              ],
            ),
          ),
          body: MyTimer(),
        ));
  }
}

class MyTimer extends StatefulWidget {
  MyTimer({Key key}) : super(key: key);

  @override
  _MyTimerState createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {

  static int _timeToCount = 1000;
  int _currentTime = _timeToCount;
  String _timeToDisplay = "1000";

  String _foo = "hello world";

  bool _isRunning = false;

  void _startTimer(){

    if(!_isRunning){

      _isRunning = true;

      Timer.periodic(
          Duration(
            seconds: 1,
          ),
          (Timer t) {
            setState(() {
              if (_currentTime > 1) {
                _currentTime = _currentTime - 1;
                // debugPrint('$_test');
              } else {
                t.cancel();
              }

              _timeToDisplay = _currentTime.toString();

            });
          });
    }
  }

  void _changeText(){
    _foo = "Hellooooo";
  }

  @override
  Widget build(BuildContext context) {
    _startTimer();
    return Container(
      child: Text('$_timeToDisplay'),
    );
  }
}
