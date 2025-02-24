import 'package:flutter/material.dart';
import 'package:gestionhoter/views/home/recherche.dart';
import 'package:gestionhoter/views/reservation/chambre.dart';
import 'package:gestionhoter/views/reservation/reservation.dart';
import 'package:gestionhoter/views/restauration/restouration_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(08),
          child: Column(
            children: [
              Recherche(),
              SizedBox(height: 10,),
              Container(
               height: 400,
                color: Colors.white,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Reservation()),
                    );
                  },
                  child: Chambre(),
                ),
              ),
              SizedBox(height: 10,),
              Container(
               height: 200,
                color: Colors.green,
              ),
            ],
          ),
          ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Recherche"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: "Historique"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
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
            title: Text(
              'Accueil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100
              ),
              ),
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
                MaterialPageRoute(builder: (context) => Chambre()),
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

   