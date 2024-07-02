import 'package:flutter/material.dart';
import 'quality_check_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Quality Control'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menú',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Quality Check'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QualityCheckPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Statistic Analysis'),
              onTap: () {
                // Navegar a Statistic Analysis cuando esté listo
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Bienvenido al Dashboard',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
