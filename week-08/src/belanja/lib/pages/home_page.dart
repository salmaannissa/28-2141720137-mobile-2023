import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'As Long As The Lemon Trees Grow', 
      price: 178000,
      img: 'assets/LemonTrees.jpg',
      stock: 20,
      rating: 5,
      author : 'Zoulfa Katouh',
      pages : 399,
      lang : 'English',
    ),
    Item(
      name: 'If You Could See The Sun', 
      price: 165000,
      img: 'assets/SeeTheSun.jpg',
      stock: 10,
      rating: 3,
      author : 'Ann Liang',
      pages : 320,
      lang : 'English',
    ),
    Item(
      name: 'Keajaiban Toko Kelotong Namiya', 
      price: 98000,
      img: 'assets/Namiya.jpg',
      stock: 10,
      rating: 5,
      author : 'Keigo Higashino',
      pages : 350,
      lang : 'Indonesia',
    ),
    Item(
      name: 'Laut Bercerita', 
      price: 110000,
      img: 'assets/LautBercerita.jpg',
      stock: 3,
      rating: 5,
      author : 'Leila S. Chudori',
      pages : 410,
      lang : 'Indonesia',
    ),
    Item(
      name: 'Gadis Kretek', 
      price: 110000,
      img: 'assets/GadisKretek.jpg',
      stock: 12,
      rating: 5,
      author : 'Ratih Kumala',
      pages : 343,
      lang : 'Indonesia',
    ),
  ];
  HomePage({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Books Shelf Shopping'),
      backgroundColor: Colors.blue.shade900,
      ), 
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade900, 
        height : 45,
        child : const Row(children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Text('Salma Annissa Azizi (2141720137)', 
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,),
          textAlign: TextAlign.left),
          ],)
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
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: 
                            Center(child : 
                              Hero(
                                tag: item.img.toString(),
                                child : Image.asset(item.img.toString(),
                                width : 200,
                                height : 150)
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child : Text(item.name, 
                          style: const TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        )
                        )
                      ],),
                      Row(children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child : Text('Rp${item.price.toString()},00',
                          ),
                        )
                        ),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child : Text('Stock : ${item.stock.toString()}',
                          textAlign: TextAlign.right,)
                          ),)
                      ],),
                      Row(children: <Widget>[
                        const Padding(padding: EdgeInsets.all(3.0),),
                        for (int i = 0; i < 5; i++)
                          (i < item.rating) 
                            ? const Icon(
                              Icons.star,
                              size : 15,
                              color : Colors.yellow,
                            )
                            : const Icon(
                              Icons.star,
                              size : 15,
                              color : Colors.black,
                            ),
                        const Padding(padding: EdgeInsets.all(3.0),),
                        Text(item.rating.toString())
                      ],)
                    ],
                  )
                  // Row(
                  //   children: [
                  //     
                  //     Expanded(child: Text(item.price.toString(),
                  //     textAlign: TextAlign.end,),
                  //     )
                  //   ],
                  // ),
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