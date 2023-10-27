import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];
  HomePage({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('My Shopping App'),
    ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child : GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust this number as needed
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap:(){
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  height: 10,
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(child: Text(item.price.toString(),
                      textAlign: TextAlign.end,),
                      )
                    ],
                  ),
                )
              ),
            );
          },
        )
      ),
    );
    //throw UnimplementedError();
  }
}