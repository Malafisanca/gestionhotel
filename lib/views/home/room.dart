import 'package:flutter/material.dart';
import 'package:gestionhoter/views/home/hotelcard.dart';

class Room extends StatelessWidget {
  Room({super.key});

  final List<Map<String, dynamic>> hotelliste = [
    {
      "title": "Hotel Royal",
      "price": 120,
      "review": 4.5, 
      "image": "assets/images/room1.png"
    },
    {
      "title": "Hotel Palace",
      "price": 50,
      "review": 4.7,
      "image": "assets/images/room2.png"
    },
    {
      "title": "Hotel Grand",
      "price": 80,
      "review": 4.8,
      "image": "assets/images/room3.png"
    },
    {
      "title": "Hotel Lux",
      "price": 100,
      "review": 4.0,
      "image": "assets/images/room4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Barre de titre avec filtre
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hôtels Populaires", // Correction du texte
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Text(
                      "Voir tout",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () {
                        // Ajoutez ici l'action du bouton filtre
                      },
                      icon: const Icon(
                        Icons.filter_list_outlined,
                        size: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Liste des hôtels sous forme de scroll horizontal
          SizedBox(
            height: 200, // Hauteur définie pour éviter les erreurs de layout
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotelliste.length,
              itemBuilder: (context, index) {
                return Hotelcard(hotelData: hotelliste[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
