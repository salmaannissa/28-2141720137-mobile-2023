import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

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
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
  void initState(){
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
    super.initState();
    // colorStream = ColorStream();
    // changeColor();
  }
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
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
        backgroundColor: Colors.red.shade200,
      ),
      // body: Container(
      //   decoration: BoxDecoration(color: bgColor),
      // )
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(onPressed: ()=>addRandomNumber(), 
            child: const Text('New Random Number'))
          ],
        )
      ),
    );
  }
}