import 'package:flutter/material.dart';

class QualityCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality Check'),
        backgroundColor: Color(0xFF6A1B9A), // Color del encabezado
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
        ],
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
                Navigator.pushNamed(context, '/qualityCheck');
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Statistic Analysis'),
              //onTap: () {
                //Navigator.pushNamed(context, '/statisticAnalysis');
              //},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'QUALITY CHECK',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A1B9A), // Color del texto
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Utiliza tu camara para hacer un escaneo de calidad comparando el componente',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 100,
                    icon: Icon(Icons.camera_alt, color: Colors.black),
                    onPressed: () {
                      // Acción para abrir la cámara
                    },
                  ),
                  SizedBox(width: 20),
                  //Image.asset('assets/component_sample.png', height: 100),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF2C2E43),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    _buildTextField('Nombre del componente'),
                    SizedBox(height: 20),
                    _buildTextField('Calidad 1-10 Inspección Visual'),
                    SizedBox(height: 20),
                    _buildTextField('No. de Pieza'),
                    SizedBox(height: 20),
                    _buildTextField('Observaciones'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción del botón para enviar el formulario
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  backgroundColor: Color(0xFF6A1B9A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Enviar', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
