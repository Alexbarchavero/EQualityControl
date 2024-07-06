import 'package:flutter/material.dart';

class QualityReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality Report'),
        backgroundColor: Color(0xFF6A1B9A),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Quality Report 1'),
              subtitle: Text('Description of quality report.'),
              trailing: Icon(Icons.description, color: Colors.purple),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Quality Report 2'),
              subtitle: Text('Description of quality report.'),
              trailing: Icon(Icons.description, color: Colors.purple),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Quality Report 3'),
              subtitle: Text('Description of quality report.'),
              trailing: Icon(Icons.description, color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
