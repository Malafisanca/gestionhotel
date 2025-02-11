import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class Chambre extends StatefulWidget {
  static var length;

  const Chambre({super.key});

  @override
  _ChambreState createState() => _ChambreState();
}

class _ChambreState extends State<Chambre> {
  List<Map<String, dynamic>> rooms = [
    {"name": "Chambre Deluxe", "price": 120, "type": "Deluxe", "available": true, "image": "assets/images/room1.png"},
    {"name": "Suite Présidentielle", "price": 300, "type": "Suite", "available": false, "image": "assets/images/room2.png"},
    {"name": "Chambre Standard", "price": 80, "type": "Standard", "available": true, "image": "assets/images/room3.png"},
    {"name": "Chambre Familiale", "price": 150, "type": "Familiale", "available": true, "image": "assets/images/room4.png"},
    {"name": "Chambre Familiale", "price": 150, "type": "Familiale", "available": true, "image": "assets/images/room4.png"},
     {"name": "Suite Présidentielle", "price": 300, "type": "Suite", "available": false, "image": "assets/images/room2.png"},
    {"name": "Chambre Standard", "price": 80, "type": "Standard", "available": true, "image": "assets/images/room3.png"},
    {"name": "Chambre Familiale", "price": 150, "type": "Familiale", "available": true, "image": "assets/images/room4.png"},
    {"name": "Chambre Familiale", "price": 150, "type": "Familiale", "available": true, "image": "assets/images/room4.png"},
  ];

  String selectedType = "Tous";
  bool showAvailableOnly = false;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredRooms = rooms.where((room) {
      if (selectedType != "Tous" && room["type"] != selectedType) return false;
      if (showAvailableOnly && !room["available"]) return false;
      return true;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text("Liste des chambres")),
      body: Column(
        children: [
          // Filtres
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                    });
                  },
                  items: ["Tous", "Deluxe", "Suite", "Standard", "Familiale"]
                      .map((type) => DropdownMenuItem(value: type, child: Text(type)))
                      .toList(),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: showAvailableOnly,
                      onChanged: (value) {
                        setState(() {
                          showAvailableOnly = value!;
                        });
                      },
                    ),
                    Text("Disponible"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: filteredRooms.isEmpty
                  ? Center(child: Text("Aucune chambre trouvée"))
                  : Container(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: filteredRooms.length,
                        itemBuilder: (context, index) {
                          final room = filteredRooms[index];
                          return FadeInUp(
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                                    child: Image.asset(room["image"], height: 100, width: double.infinity, fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(room["name"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                        Text("${room["price"]}€ / nuit", style: TextStyle(color: Colors.green)),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(room["type"]),
                                            room["available"]
                                                ? Icon(Icons.check_circle, color: Colors.green)
                                                : Icon(Icons.cancel, color: Colors.red),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
