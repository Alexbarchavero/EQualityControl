import 'package:flutter/material.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white, // Fondo blanco
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/quality_control.png', height: 150),
                    SizedBox(height: 20),
                    Text(
                      'E-Quality Control',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6A1B9A), // Morado oscuro
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Mejorando los procesos de calidad.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6A1B9A), // Morado oscuro
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 34, 38, 63), // Fondo azul oscuro
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200, // Ancho de los botones
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 15), // Padding vertical
                          backgroundColor: Color.fromARGB(255, 73, 66, 206), // Azul rey oscuro
                          foregroundColor: Colors.white, // Color del texto
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Bordes redondeados
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                          );
                        },
                        child: Text('Iniciar Sesión'),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 200, // Ancho de los botones
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 15), // Padding vertical
                          backgroundColor: Color.fromARGB(255, 73, 66, 206), // Azul rey oscuro
                          foregroundColor: Colors.white, // Color del texto
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Bordes redondeados
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text('Registrarse'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
