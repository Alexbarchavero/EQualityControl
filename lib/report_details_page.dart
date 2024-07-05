import 'package:flutter/material.dart';

class ReportDetailsPage extends StatelessWidget {
  final String reportName;
  final String date;

  ReportDetailsPage({required this.reportName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Reporte'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Reporte: $reportName', style: TextStyle(fontSize: 18, color: Colors.white)),
            SizedBox(height: 10),
            Text('Fecha: $date', style: TextStyle(fontSize: 18, color: Colors.white)),
            SizedBox(height: 20),
            Text('Contenido del reporte aquí...', style: TextStyle(fontSize: 16, color: Colors.white)),
            // Otros detalles y contenido del reporte
          ],
        ),
      ),
    );
  }
}
