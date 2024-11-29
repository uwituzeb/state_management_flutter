import 'package:flutter/material.dart';
import 'package:state_management_flutter/favorites_screen.dart';

import 'favorites.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  final List<String> products = [
    'intro(end of the world)',
    'bye',
    'eternal sunshine',
    'supernatural',
    'yes, and?',
    'imperfect for you',
    'true story'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eternal Sunshine Album'),
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
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => FavoritesScreen()),);
      },
      child: const Icon(Icons.favorite),),
    );
  }
}