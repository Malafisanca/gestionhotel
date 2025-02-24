import 'package:flutter/material.dart';

class RestourationPage extends StatefulWidget {
  const RestourationPage({super.key});

  @override
  State<RestourationPage> createState() => _RestourationPageState();
}

class _RestourationPageState extends State<RestourationPage> {
  // String? _selectedMeal;
  // final List<String> _meals = ['Petit déjeuner', 'Déjeuner', 'Dîner'];
  final List<Map<String, dynamic>> _menu = [
    {'name': 'Pizza', 'price': 12.0, 'image': 'assets/images/room1.png'},
    {'name': 'Burger', 'price': 8.0, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Salade', 'price': 6.5, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Pâtes', 'price': 10.0, 'image': 'https://via.placeholder.com/150'},
  ];

  final Map<String, int> _cart = {};

  void _addToCart(String itemName) {
    setState(() {
      if (_cart.containsKey(itemName)) {
        _cart[itemName] = _cart[itemName]! + 1;
      } else {
        _cart[itemName] = 1;
      }
    });
  }

  void _removeFromCart(String itemName) {
    setState(() {
      if (_cart.containsKey(itemName) && _cart[itemName]! > 0) {
        _cart[itemName] = _cart[itemName]! - 1;
        if (_cart[itemName] == 0) {
          _cart.remove(itemName);
        }
      }
    });
  }

  double _calculateTotal() {
    double total = 0;
    _cart.forEach((key, quantity) {
      final item = _menu.firstWhere((element) => element['name'] == key);
      total += item['price'] * quantity;
    });
    return total;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Commande de restauration')),
      //drawer: AppDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _menu.length,
              itemBuilder: (context, index) {
                final item = _menu[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.network(item['image'], width: 50, height: 50, fit: BoxFit.cover),
                    title: Text(item['name']),
                    subtitle: Text('${item['price']} €'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => _removeFromCart(item['name']),
                        ),
                        Text(_cart[item['name']]?.toString() ?? '0'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () => _addToCart(item['name']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Total: ${_calculateTotal()} €', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _cart.isEmpty
                      ? null
                      : () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Commande confirmée !')),
                          );
                        },
                  child: Text('Confirmer la commande'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
