import 'package:flutter/material.dart';
import 'quality_check_page.dart';
import 'statistic_analysis_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Quality Control'),
      ),
      body: Center(
        child: Text(
          'Bienvenido al Dashboard',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Control de Calidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Análisis Estadístico',
          ),
        ],
        currentIndex: 0, // Indice inicial del item seleccionado
        selectedItemColor: Colors.blueAccent,
        onTap: (int index) {
          switch (index) {
            case 0:
              // Dashboard
              Navigator.pushNamed(context, '/dashboard');
              break;
            case 1:
              // Control de Calidad
              Navigator.pushNamed(context, '/qualityCheck');
              break;
            case 2:
              // Análisis Estadístico
              Navigator.pushNamed(context, '/statisticAnalysis');
              break;
          }
        },
      ),
    );
  }
}
