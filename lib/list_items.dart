import 'package:flutter/material.dart';
import 'package:ec_mobile/widgets//left_drawer.dart';

class Item {
  final String name;
  final int amount;
  final String description;
  final String category;

  Item(this.name, this.amount, this.description, this.category);
}

class ItemPage extends StatelessWidget {
  final List<Item> items;
  ItemPage({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Daftar Item'),
        ),
        backgroundColor: Color.fromRGBO(248, 237, 227, 1.0),
        foregroundColor: Color.fromRGBO(125, 110, 131, 1.0),
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            elevation: 2.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: ListTile(
              title: Text('${item.name} - ${item.amount} pcs'),
              subtitle: Text('${item.description} \n ${item.category}'),

            ),
          );
        },
      ),
    );
  }
}