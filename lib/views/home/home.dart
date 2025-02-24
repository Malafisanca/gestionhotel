import 'package:flutter/material.dart';
import 'package:gestionhoter/views/home/recherche.dart';
import 'package:gestionhoter/views/home/room.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(08),
          child: Column(
            children: [
              Recherche(),
              Room(),
              SizedBox(height: 10,),
              Container(
               height: 1500,
                color: Colors.green,
              ),
            ],
          ),
          ),
      ),
    );
  }
}