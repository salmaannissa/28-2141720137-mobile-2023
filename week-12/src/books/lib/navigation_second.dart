import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond ({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build (BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen || Salma Annissa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 255, 133, 133);             
                Navigator.pop(context, color);
              }, 
              child: const Text("PINK"),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 255, 166, 50);
                Navigator.pop(context, color);
              }, 
              child: const Text("ORANGE"),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 18, 165, 80);             
                Navigator.pop(context, color);
              }, 
              child: const Text("GREEN"),
            ),
          ],
        ),
      ),
    );
  }
}