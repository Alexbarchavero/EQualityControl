import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xFF6A1B9A),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: NotificationsDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            DashboardButton(
              icon: Icons.assignment,
              label: 'Quality Check',
              onTap: () {
                Navigator.pushNamed(context, '/qualityCheck');
              },
            ),
            DashboardButton(
              icon: Icons.analytics,
              label: 'Statistical Analysis',
              onTap: () {
                Navigator.pushNamed(context, '/statisticAnalysis');
              },
            ),
            DashboardButton(
              icon: Icons.assignment,
              label: 'Material Entry',
              onTap: () {
                Navigator.pushNamed(context, '/materialEntry');
              },
            ),
            DashboardButton(
              icon: Icons.build,
              label: 'Tool Monitoring',
              onTap: () {
                Navigator.pushNamed(context, '/toolMonitoring');
              },
            ),
            DashboardButton(
              icon: Icons.precision_manufacturing,
              label: 'Machine Monitoring',
              onTap: () {
                Navigator.pushNamed(context, '/machineMonitoring');
              },
            ),
            DashboardButton(
              icon: Icons.report,
              label: 'Quality Reports',
              onTap: () {
                Navigator.pushNamed(context, '/qualityReport');
              },
            ),
            DashboardButton(
              icon: Icons.report,
              label: 'Material Details',
              onTap: () {
                Navigator.pushNamed(context, '/materialDetails');
              },
            ),
            DashboardButton(
              icon: Icons.report,
              label: 'Report Details',
              onTap: () {
                Navigator.pushNamed(context, '/reportDetails');
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

class NotificationsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Quality Alerts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Card(
            child: ListTile(
              title: Text('Quality Alert 1'),
              subtitle: Text('Description of quality alert.'),
              trailing: Icon(Icons.warning, color: Colors.orange),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Quality Alert 2'),
              subtitle: Text('Description of quality alert.'),
              trailing: Icon(Icons.error, color: Colors.red),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Quality Alert 3'),
              subtitle: Text('Description of quality alert.'),
              trailing: Icon(Icons.info, color: Colors.blue),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Real-Time Alerts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Card(
            child: ListTile(
              title: Text('Alert 1'),
              subtitle: Text('Description of real-time alert.'),
              trailing: Icon(Icons.warning, color: Colors.orange),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Alert 2'),
              subtitle: Text('Description of real-time alert.'),
              trailing: Icon(Icons.error, color: Colors.red),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Alert 3'),
              subtitle: Text('Description of real-time alert.'),
              trailing: Icon(Icons.info, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
