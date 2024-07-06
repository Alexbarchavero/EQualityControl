import 'package:flutter/material.dart';

class MachineMonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machine Monitoring'),
        backgroundColor: Color(0xFF6A1B9A), // Color púrpura oscuro
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Machine A'),
              subtitle: Text('Status: Operational'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Machine B'),
              subtitle: Text('Status: Needs Maintenance'),
              trailing: Icon(Icons.warning, color: Colors.orange),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Machine C'),
              subtitle: Text('Status: Out of Service'),
              trailing: Icon(Icons.error, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
