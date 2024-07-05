import 'package:flutter/material.dart';

class QualityAlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas de Calidad'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Center(
        child: Text(
          'Página de Alertas de Calidad',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
