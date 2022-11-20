
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi_rute/item.dart';

class ItemPage extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    // TODO: implement build
    final  itemArgs = ModalRoute.of(context)!.settings.arguments as Item;


    return Card(
      child: Container(
        margin: const EdgeInsets.all(100),
        width: 320,
        height: 240,
        decoration: BoxDecoration(border: Border.all(color: Colors.pink),
            borderRadius: (BorderRadius.circular(12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: " + itemArgs.name,
                style: const TextStyle(fontSize: 30)),
            Text("Price: " + itemArgs.price.toString(),
                style: const TextStyle(fontSize: 30)),
            Text(itemArgs.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
    
  
}