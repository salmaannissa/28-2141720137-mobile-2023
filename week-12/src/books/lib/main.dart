import 'dart:async';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salma Annissa Azizi', // TUGAS NO. 1 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  //SOAL 4
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }
  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }
  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState((){
      result = total.toString();
    });
  }
  //SOAL 5
  late Completer completer;
  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }
  Future calculate() async{
    // await Future.delayed(const Duration(seconds : 5));
    // completer.complete(42);
    // SOAL 6
    try {
      await new Future.delayed(const Duration(seconds : 5));
      completer.complete(42);
      // throw Exception();
    }
    catch(_) {
      completer.completeError({});
    }
  }
  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/tZldEAAAQBAJ'; //SOAL 2
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
  // SOAL 7
  void returnFG() {
    // FutureGroup<int> futureGroup = FutureGroup<int>();
    // futureGroup.add(returnOneAsync());
    // futureGroup.add(returnTwoAsync());
    // futureGroup.add(returnThreeAsync());
    // futureGroup.close();
    // SOAL 8
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    // futureGroup.future.then((List<int>value) { // SOAL 7
    // SOAL 8
    futures.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }
  // SOAL 9
  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from The Future'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            // ElevatedButton(
            //   onPressed: (){ //SOAL 3
            //     setState(() {});
            //     getData()
            //     .then((value) {
            //       result = value.body.toString().substring(0, 450);
            //       setState(() {});
            //     }).catchError((_){
            //       result = 'An error occurred';
            //       setState(() {});
            //     });
            //   }, 
            //   child: const Text('GO!')
            // ),
            // SOAL 4
            // ElevatedButton(
            //   onPressed: (){count();}, 
            //   child: const Text('GO!')
            // ),
            // SOAL 5
            ElevatedButton(
              onPressed: () {
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // }).catchError((e) { // SOAL 6
                //   result = 'An error occured';
                // });
                // returnFG(); // SOAL 7
                returnError()
                  .then((value){
                    setState(() {
                      result = 'Success';
                    });
                  }).catchError((onError){
                    setState(() {
                      result = onError.toString();
                    });
                  }).whenComplete(() => print('Complete'));
              },
              child: const Text('GO!'),
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
