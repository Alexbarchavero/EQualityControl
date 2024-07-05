import 'package:flutter/material.dart';

class RealTimeAlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas en Tiempo Real'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Center(
        child: Text(
          'Página de Alertas en Tiempo Real',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
