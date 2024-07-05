import 'package:flutter/material.dart';

class MaterialDetailsPage extends StatelessWidget {
  final String materialName;
  final int quantity;
  final String entryDate;

  MaterialDetailsPage(
      {required this.materialName,
      required this.quantity,
      required this.entryDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Material'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $materialName',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            SizedBox(height: 10),
            Text('Cantidad: $quantity',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            SizedBox(height: 10),
            Text('Fecha de Entrada: $entryDate',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            // Otros detalles del material
          ],
        ),
      ),
    );
  }
}
