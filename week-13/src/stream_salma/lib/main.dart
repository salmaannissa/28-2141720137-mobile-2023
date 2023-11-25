import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream || Salma Annissa', // SOAL 1
      theme: ThemeData(
        primaryColor: Colors.red.shade200, // SOAL 1
        useMaterial3: true,
      ),
      home : const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  void initState(){
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  void changeColor() async {
    // SOAL 4
    // await for (var eventColor in colorStream.getColors()) {
    // setState(() {
    //   bgColor = eventColor;
    // });
    // SOAL 5
    colorStream.getColors().listen((eventColor){
      setState(() {
        bgColor = eventColor;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream || Salma Annissa'),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      )
    );
  }
}