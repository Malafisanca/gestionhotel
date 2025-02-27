
import 'package:flutter/material.dart';

class Hotelcard extends StatelessWidget {
  const Hotelcard({super.key, required this.hotelData});

  final Map<String, dynamic> hotelData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image de l'hôtel
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image.asset(
              hotelData['image'],
              width: 120, // Définition d'une largeur pour éviter l'étirement
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Contenu texte
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    hotelData['title'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "\$${hotelData['price']} / nuit",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 20),
                      Text(
                        "${hotelData['review']}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Bouton Favoris
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.blue,
                  size: 20,
                ),
                onPressed: () {
                  // Action à définir pour ajouter en favoris
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
