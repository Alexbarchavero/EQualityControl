import 'package:flutter/material.dart';

class QualityCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control de Calidad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'CONTROL DE CALIDAD',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Utiliza tu cámara para hacer un escaneo de calidad comparando el componente',
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
        currentIndex: 1, // Índice para el item seleccionado actualmente
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
