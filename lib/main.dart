import 'package:flutter/material.dart';
import 'package:gestionhoter/profile/connexion.dart';
//import 'package:gestionhoter/views/home/home_page.dart';
//import 'package:gestionhoter/hotels.dart';


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
      home: Connexion(),
      // theme: ThemeData(
      //   primaryColor: Color(0xff075E54)
      // ),
    );
  }
}
