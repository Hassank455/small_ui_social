import 'package:flutter/material.dart';
import 'package:social_ui_pesa/view/discovery_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiscoveryView(),
    );
  }
}

/*bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
        index: _currentIndex,
        onTap: _changeItem,
        backgroundColor: Colors.red,
      ),*/