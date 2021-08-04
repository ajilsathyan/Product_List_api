import 'package:flutter/material.dart';
import 'package:product_rest_api/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context)=>HomeScreen(),
      },
    );
  }
}
