import 'package:flutter/material.dart';

import '../colors.dart';
import '../explore_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text('Explore'),
          actions: const [
            CircleAvatar(
              backgroundColor: blueColor,
              child: Icon(
                Icons.emoji_events,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            CircleAvatar(
              backgroundColor: blueColor,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
          ],
        ),
        body: const ExplorePage(),
      ),
    );
  }
}
