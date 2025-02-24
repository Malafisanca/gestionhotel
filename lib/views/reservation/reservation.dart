import 'package:flutter/material.dart';

class Reservation extends  StatefulWidget {
  const Reservation({super.key});

  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  DateTime? _selectedDate;
  String? _selectedRoomType;
  final List<String> _roomTypes = ["Tous", "Deluxe", "Suite", "Standard", "Familiale"];

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Réservation de chambre')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Sélectionner une date:'),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text(_selectedDate == null
                  ? 'Choisir une date'
                  : _selectedDate!.toLocal().toString().split(' ')[0]),
            ),
            SizedBox(height: 16.0),
            Text('Sélectionner le type de chambre:'),
            SizedBox(height: 8.0),
            DropdownButton<String>(
              value: _selectedRoomType,
              hint: Text('Choisir un type de chambre'),
              items: _roomTypes.map((String type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedRoomType = newValue;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_selectedDate != null && _selectedRoomType != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Réservation confirmée pour $_selectedRoomType le ${_selectedDate!.toLocal().toString().split(' ')[0]}')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Veuillez sélectionner une date et un type de chambre.')),
                  );
                }
              },
              child: Text('Confirmer la réservation'),
            ),
          ],
        ),
      ),
    );
  }
}