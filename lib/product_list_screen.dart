import 'package:flutter/material.dart';

import 'favorites.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  final List<String> products = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              title: Text(product),
              trailing: Consumer<Favorites>(builder: (context, favorites, child) {
                final isFavorite = favorites.items.contains(product);
                return IconButton(
                  icon: Icon(
                    isFavorite? Icons.favorite : Icons.favorite_border,
                    color: isFavorite? Colors.redAccent : null,
                  ),
                  onPressed: () {
                    if (isFavorite) {
                        favorites.removeItem(product);
                      } else {
                        favorites.addItem(product);
                      }
              });
        }),
          ));
        },
      )
    );
  }
}