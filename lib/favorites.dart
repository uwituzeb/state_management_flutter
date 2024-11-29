import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Favorites extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => List.unmodifiable(_items);

  Favorites() {
    _loadFavorites();
  }
  // functionality to add item to favorites
  void addItem(String item) async{
    if (!_items.contains(item)) {
      _items.add(item);
      await _saveFavorites();
      notifyListeners();
    }
  }

  // functionality to remove item
  void removeItem(String item)  async{
    _items.remove(item);
    await _saveFavorites();
    notifyListeners();
  }

  // persist data across sessions

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('favorites', _items);
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final savedItems = prefs.getStringList('favorites');
    if (savedItems != null) {
      _items.addAll(savedItems);
      notifyListeners();
    }
  }
}