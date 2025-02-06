import 'package:flutter/material.dart';
import 'package:gestionhoter/views/reservation/reservation.dart';
import 'package:gestionhoter/views/restauration/restouration_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Reservation()),
                );
              },
              child: Text('Réserver une chambre'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestourationPage()),
                );
              },
              child: Text('Commander un repas'),
            ),
          ],
        ),
      ),
       drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text('Réserver une chambre'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reservation()),
              );
            },
          ),
          ListTile(
            title: Text('Commander un repas'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestourationPage()),
              );
            },
          ),
        ],
      ),
    )
    );
  }
}

    // return Scaffold(
    //   body: Container(
    //     child: Text("Home page"),
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     unselectedItemColor: Colors.grey, 
    //     items: [
    //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
    //     BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
    //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    //   ]),
    // );
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("🏨 Hôtel Luxe"),
  //       centerTitle: true,
  //     ),
  //     bottomNavigationBar: BottomNavigationBar(
  //       items: [
  //         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
  //         BottomNavigationBarItem(icon: Icon(Icons.history), label: "Historique"),
  //         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
  //       ],
  //     ),
  //     body: SingleChildScrollView(
  //       padding: EdgeInsets.all(16.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           // Bannière promotionnelle
  //           Container(
  //             width: double.infinity,
  //             height: 180,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(16),
  //               image: DecorationImage(
  //                 image: AssetImage("assets/banner.jpg"),
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //             child: Container(
  //               alignment: Alignment.center,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(16),
  //                 color: Colors.black.withOpacity(0.3),
  //               ),
  //               child: Container(
  //                 child: Text(
  //                   "🔥 Réservez maintenant et bénéficiez de -20% !",
  //                   style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           SizedBox(height: 20),

  //           // Section des fonctionnalités principales
  //           Text(
  //             "📌 Nos Services",
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //           ),
  //           SizedBox(height: 10),

  //           _buildServiceCard(
  //             context,
  //             "Réserver une Chambre",
  //             "assets/hotel_room.jpg",
  //             Icons.hotel,
  //             "/reservation",
  //           ),
  //           _buildServiceCard(
  //             context,
  //             "Commander un Repas",
  //             "assets/restaurant.jpg",
  //             Icons.restaurant,
  //             "/restaurant",
  //           ),
  //           _buildServiceCard(
  //             context,
  //             "Services Annexes",
  //             "assets/spa.jpg",
  //             Icons.spa,
  //             "/services",
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // // Widget pour afficher une carte de service
  // Widget _buildServiceCard(BuildContext context, String title, String image, IconData icon, String route) {
  //   return GestureDetector(
  //     onTap: () => Navigator.pushNamed(context, route),
  //     child: Card(
  //       margin: EdgeInsets.symmetric(vertical: 8),
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //       elevation: 4,
  //       child: Column(
  //         children: [
  //           ClipRRect(
  //             borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
  //             child: Image.asset(image, height: 150, width: double.infinity, fit: BoxFit.cover),
  //           ),
  //           ListTile(
  //             leading: Icon(icon, color: Colors.blue),
  //             title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
  //             trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
