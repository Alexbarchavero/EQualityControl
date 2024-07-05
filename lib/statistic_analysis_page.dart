import 'package:flutter/material.dart';

class StatisticAnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análisis Estadístico'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tasa de Defectos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Container(color: Color(0xFF2C2E43), height: 150, child: Center(child: Text('Gráfica Anual', style: TextStyle(color: Colors.white))))),
                  SizedBox(width: 10),
                  Expanded(child: Container(color: Color(0xFF2C2E43), height: 150, child: Center(child: Text('Gráfica Mensual', style: TextStyle(color: Colors.white))))),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Tasa de Desperdicio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Container(color: Color(0xFF2C2E43), height: 150, child: Center(child: Text('Gráfica Anual', style: TextStyle(color: Colors.white))))),
                  SizedBox(width: 10),
                  Expanded(child: Container(color: Color(0xFF2C2E43), height: 150, child: Center(child: Text('Gráfica Mensual', style: TextStyle(color: Colors.white))))),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Tiempo de Ciclo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Container(color: Color(0xFF2C2E43), height: 150, child: Center(child: Text('Gráfica Anual', style: TextStyle(color: Colors.white))))),
                  SizedBox(width: 10),
                  Expanded(child: Container(color: Color(0xFF2C2E43), height: 150, child: Center(child: Text('Gráfica Mensual', style: TextStyle(color: Colors.white))))),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Resumen del Reporte',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Container(
                color: Color(0xFF2C2E43),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.print, size: 50, color: Colors.white),
                  Icon(Icons.save_alt, size: 50, color: Colors.white),
                  Icon(Icons.share, size: 50, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
