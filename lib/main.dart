import 'package:flutter/material.dart';
import 'package:getx_rest_api/screens/home.dart';
import'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Myhomepage(),
    );
  }
}
