import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(appBar: AppBar(
      title: Text(item.name),
      backgroundColor: Colors.blue.shade900,
    ),
    body : GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child : Card(
        child : Column(children: [
          Container(
          margin : const EdgeInsets.all(8.0),
          child : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width : 200,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Hero(
                        tag: item.img.toString(),
                        child : Image.asset(item.img.toString(),
                        width : 200,
                        height : 300)
                      ),
                    ),
                  ]
                )
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [
                  Row(
                    children: [
                      Text(item.name, 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 15,
                        color: Colors.blue.shade900), 
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(item.author, 
                      style: const TextStyle(
                        //fontWeight: FontWeight.bold, 
                        fontSize: 13), 
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(item.lang, 
                      style: const TextStyle(
                        //fontWeight: FontWeight.bold, 
                        fontSize: 13), 
                        
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('${item.pages.toString()} pages', 
                      style: const TextStyle(
                        //fontWeight: FontWeight.bold, 
                        fontSize: 13), 
                        
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Text('Stok : ' , 
                      style: TextStyle(
                        //fontWeight: FontWeight.bold, 
                        fontSize: 13), 
                      ),
                      Text(item.stock.toString(), 
                      style: const TextStyle(
                        //fontWeight: FontWeight.bold, 
                        fontSize: 13), 
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: 
                      <Widget>[
                        for (int i = 0; i < 5; i++)
                          (i < item.rating)
                            ? const Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber,
                              )
                            : const Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.black,
                              ),
                          const Padding(padding: EdgeInsets.all(3.0),),
                          Text(item.rating.toString())
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                          onPressed: (){Navigator.pop(context);},
                          style : ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade900,
                          ),
                          child: Text('Purchase for Rp${item.price.toString()}'),
                      ),)
                    ],
                  ),
                ]
              ),
              ),
            ],
          ),
          //Row(children: [Text('Aloha')],)
        ),
        ],)
      ),
    )
    );
    //throw UnimplementedError();
  }
}