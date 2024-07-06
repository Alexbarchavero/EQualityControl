import 'package:flutter/material.dart';

class ToolMonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Monitoring'),
        backgroundColor: Color(0xFF6A1B9A), // Dark purple color
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Tool A'),
              subtitle: Text('Status: Operational'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Tool B'),
              subtitle: Text('Status: Needs Maintenance'),
              trailing: Icon(Icons.warning, color: Colors.orange),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Tool C'),
              subtitle: Text('Status: Out of Service'),
              trailing: Icon(Icons.error, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
