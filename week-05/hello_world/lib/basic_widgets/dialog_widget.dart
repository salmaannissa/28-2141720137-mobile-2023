import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/dialogMyLayout_widget.dart';

class DialogMyApp extends StatelessWidget {
  const DialogMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DialogML(),
      ),
    );
  }
}