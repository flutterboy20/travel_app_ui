import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/bottom_navigation_bar_screen.dart';
import 'package:travel_app_ui/screens/detail_screen.dart';
import 'package:travel_app_ui/screens/home_screen.dart';
import 'package:travel_app_ui/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: MyTheme.darkTheme(context),
      home: BottomNavigationBarScreen(),
      routes: {
        BottomNavigationBarScreen.routeName: (context) =>
            BottomNavigationBarScreen(),
        DetailScreen.routName: (context) => DetailScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
