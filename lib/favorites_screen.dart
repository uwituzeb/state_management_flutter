import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Favorites'),
      ),
      body: Consumer<Favorites>(
        builder: (context, favorites, child) {
          final favoriteItems = favorites.items;
          if (favoriteItems.isEmpty) {
            return const Center(child: Text('No favorites yet.'));
          }
          return ListView.builder(
            itemCount: favoriteItems.length,
            itemBuilder: (context, index) {
              final item = favoriteItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      favorites.removeItem(item);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
