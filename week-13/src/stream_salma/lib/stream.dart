import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // SOAL 2 : Menambahkan 5 warna lain
    Colors.red.shade300,
    Colors.indigo.shade300,
    Colors.lightGreen.shade300,
    Colors.lime.shade300,
    Colors.deepOrange.shade300,
  ];

  // SOAL 3
  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t){
        int index = t % colors.length;
        return colors[index];
      });
  }
}