import 'package:flutter/material.dart';
import 'package:social_app/screens/bottom_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'social demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              selectedItemColor: Color(0xff434B56),
              type: BottomNavigationBarType.fixed,
            ),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0.0,
                iconTheme: IconThemeData(color: Color(0xff434B56))),
            scaffoldBackgroundColor: Colors.white,
            fontFamily: "Roboto"),
        home: const BottomPage());
  }
}
