import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  Future<Position>? position; // SOAL 13
  @override
  void initState() {
    super.initState();
    position = getPosition(); // SOAL 13
    // SOAL 12
    // getPosition().then((Position myPos) {
    //   myPosition = 
    //   'Latitude ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    // SOAL 12
    // final myWidget = myPosition == ''
    // ? const CircularProgressIndicator()
    // : Text(myPosition);
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location || Salma Annissa')), // SOAL 11
      // body: Center(child: Text(myPosition)),
      // body: Center(child: myWidget), // SOAL 12
      // SOAL 13
      body: Center(child: FutureBuilder(
        future: position,
        builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          else if (snapshot.connectionState == ConnectionState.done) {
            return Text(snapshot.data.toString());
          }
          else {
            return const Text('');
          }
        },
      ),
    ));
  }
  Future<Position> getPosition() async {
    await Future.delayed(const Duration(seconds: 3)); // SOAL 12
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    // Position? position = await Geolocator.getCurrentPosition(); // SOAL 12
    Position position = await Geolocator.getCurrentPosition(); // SOAL 13
    return position;
  }
}