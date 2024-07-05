import 'package:flutter/material.dart';

class MachineMonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoreo de Maquinarias'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Center(
        child: Text(
          'Página de Monitoreo de Maquinarias',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
