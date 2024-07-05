import 'package:flutter/material.dart';

class ToolMonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoreo de Herramientas'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Center(
        child: Text(
          'Página de Monitoreo de Herramientas',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
