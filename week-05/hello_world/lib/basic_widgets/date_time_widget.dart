import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/date_time_hp.dart';

class dateMyApp extends StatelessWidget {
  const dateMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: dateHomePage(title: 'Contoh Date Picker'),
    );
  }
}

