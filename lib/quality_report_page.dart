import 'package:flutter/material.dart';

class QualityReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reportes de Calidad'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Center(
        child: Text(
          'Página de Reportes de Calidad',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
