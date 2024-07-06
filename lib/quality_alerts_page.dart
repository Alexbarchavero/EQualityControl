import 'package:flutter/material.dart';

class QualityAlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality Alerts'),
        backgroundColor: Color(0xFF6A1B9A), // Color púrpura oscuro
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
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
        ],
      ),
    );
  }
}
