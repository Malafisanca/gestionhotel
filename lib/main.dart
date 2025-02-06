import 'package:flutter/material.dart';
import 'package:gestionhoter/views/home/home_page.dart';
//import 'package:gestionhoter/views/reservation/chambre.dart';
//import 'package:gestionhoter/hotels.dart';
//import 'package:gestionhoter/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gestion hotel",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
