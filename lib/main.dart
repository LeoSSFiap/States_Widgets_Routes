import 'package:flutter/material.dart';
import 'package:states_widgets_routes/screens/add.dart';
import 'package:states_widgets_routes/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(),
        "/add": (context) => AddLanguage(),

      },
    );
  }
}