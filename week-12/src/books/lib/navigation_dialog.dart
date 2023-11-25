import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  _showColorDialog (BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (_) {
        return AlertDialog(
          title: const Text("Very Important Question"),
          content: const Text("Please choose a color"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  color = Color.fromARGB(255, 255, 133, 133);  
                });
                Navigator.pop(context);
              }, 
              child: const Text("PINK"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  color = Color.fromARGB(255, 255, 166, 50);
                });
                Navigator.pop(context);
              }, 
              child: const Text("ORANGE"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  color = const Color.fromARGB(255, 18, 165, 80);
                });
                Navigator.pop(context);
              }, 
              child: const Text("GREEN"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation Dialog Screen || Salma Annissa"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          }, 
          child: const Text("Change Color"),
        )
      ),
    );
  }
}