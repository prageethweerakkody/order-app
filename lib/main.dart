import 'package:flutter/material.dart';
import 'package:flutter_app/screens/bottom_nav_screen.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/data/Product.dart';

Future<void> main() async {
  await getProducts();
  await new Future.delayed(new Duration(seconds: 3));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //getProducts();

    return MaterialApp(
      title: 'Order App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavScreen(),
    );
  }

  Future<void> test() async {
    await getProducts();
  }
}
