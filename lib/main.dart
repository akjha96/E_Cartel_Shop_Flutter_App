import 'package:flutter/material.dart';

import './screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
            errorColor: Colors.red,
          ).copyWith(
            secondary: Colors.deepOrange,
          )),
      home: ProductOverviewScreen(),
    );
  }
}
