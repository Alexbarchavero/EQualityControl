import 'package:flutter/material.dart';

class QualityCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control de Calidad'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Center(
        child: Text(
          'Página de Control de Calidad',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
