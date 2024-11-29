import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/favorites.dart';
import 'package:state_management_flutter/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Favorites(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favorites App',
      home: ProductListScreen()
    ));
  }
}
