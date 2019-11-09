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
          body: Text("Foo bar")),
    );
  }
}
