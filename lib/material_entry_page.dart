import 'package:flutter/material.dart';

class MaterialEntryPage extends StatelessWidget {
  final TextEditingController materialNameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Materiales'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: materialNameController,
              decoration: InputDecoration(
                labelText: 'Nombre del Material',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: quantityController,
              decoration: InputDecoration(
                labelText: 'Cantidad',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color(0xFF6A1B9A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Registrar', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 