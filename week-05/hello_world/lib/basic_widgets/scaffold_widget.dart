import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/scaffoldhp_widget.dart';

class ScaffoldMyApp extends StatelessWidget {
  const ScaffoldMyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const ScaffoldHP(title: 'My Increment App'),
    );
  }
}

