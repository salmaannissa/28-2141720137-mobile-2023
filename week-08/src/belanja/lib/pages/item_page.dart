import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(appBar: AppBar(
      title: const Text('Item Details'),
      backgroundColor: Colors.pinkAccent,
    ),
    body : Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Column(
              children: <Widget>[
                const Text(
                  "Item Name : ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  item.name,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: [
                const Text(
                  "Harga Item: ",
                  style : TextStyle(
                    color: Colors.black
                  ),
                ),
                Text(
                  item.price.toString(),
                  style: const TextStyle(
                    color: Colors.red
                  ),
                ),
              ],
            )
          ]
        ),
      ],
    ),
    );
    //throw UnimplementedError();
  }
}