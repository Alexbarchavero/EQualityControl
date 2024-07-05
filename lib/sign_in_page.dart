import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'home_screen.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C2E43), // Fondo oscuro
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -60,
            left: -60,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xFF6A1B9A), // Color del círculo
                shape: BoxShape.circle,
              ),
              child: Center(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  label: Text(
                    'Atrás',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: Image.asset(
              'assets/logo.png',
              height: 50,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Inicia sesión para continuar.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: emailController,
                          label: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese su email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          controller: passwordController,
                          label: 'Password',
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese su contraseña';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() == true) {
                                // Credenciales temporales
                                String tempEmail = 'tempuser@example.com';
                                String tempPassword = 'temppassword';

                                if (emailController.text == tempEmail &&
                                    passwordController.text == tempPassword) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DashboardPage()),
                                  );
                                } else {
                                  // Mostrar un mensaje de error
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Email o contraseña incorrectos')),
                                  );
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Color(0xFF6A1B9A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child:
                                Text('Entrar', style: TextStyle(fontSize: 18)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                    child: Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: Text(
                      '¡Registrate!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  CustomTextField({
    required this.controller,
    required this.label,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      validator: validator,
    );
  }
}
