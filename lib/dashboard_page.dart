import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            DashboardButton(
              icon: Icons.assignment,
              label: 'Entrada de Materiales',
              onTap: () {
                Navigator.pushNamed(context, '/materialEntry');
              },
            ),
            DashboardButton(
              icon: Icons.build,
              label: 'Monitoreo de Herramientas',
              onTap: () {
                Navigator.pushNamed(context, '/toolMonitoring');
              },
            ),
            DashboardButton(
              icon: Icons.precision_manufacturing,
              label: 'Monitoreo de Maquinarias',
              onTap: () {
                Navigator.pushNamed(context, '/machineMonitoring');
              },
            ),
            DashboardButton(
              icon: Icons.notifications,
              label: 'Alertas en Tiempo Real',
              onTap: () {
                Navigator.pushNamed(context, '/realTimeAlerts');
              },
            ),
            DashboardButton(
              icon: Icons.warning,
              label: 'Alertas de Calidad',
              onTap: () {
                Navigator.pushNamed(context, '/qualityAlerts');
              },
            ),
            DashboardButton(
              icon: Icons.report,
              label: 'Reportes de Calidad',
              onTap: () {
                Navigator.pushNamed(context, '/qualityReport');
              },
            ),
            DashboardButton(
              icon: Icons.analytics,
              label: 'Análisis Estadístico',
              onTap: () {
                Navigator.pushNamed(context, '/statisticAnalysis');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  DashboardButton({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2C2E43),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
