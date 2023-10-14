// import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

class PersonalDataWidget extends StatelessWidget {
  const PersonalDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salma Annissa Azizi',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text('Experienced Back End Developer'),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Lowokwaru, Malang'),
            Text('087839597241'),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Icon(
              Icons.accessibility,
              size: 50,
            ),
            Icon(
              Icons.timer,
              size: 50,
            ),
            Icon(
              Icons.phone_android,
              size: 50,
            ),
            Icon(
              Icons.phone_iphone,
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}