import 'package:flutter/material.dart';
import 'package:books/navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.grey; // SOAL 15
  // SOAL 16
  Future _NavigationAndGetColor(BuildContext context) async {
    color = await Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationSecond()),) ?? Colors.blue;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen || Salma Annissa'), // SOAL 15
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: (){
            _NavigationAndGetColor(context);
          }),
      ),
    );
  }
}