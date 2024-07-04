import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';
import 'dashboard_page.dart';
import 'quality_check_page.dart';
import 'statistic_analysis_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Quality Control',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headlineSmall: TextStyle(
            fontSize: 24.0,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/signIn': (context) => SignInPage(),
        '/signUp': (context) => SignUpPage(),
        '/dashboard': (context) => DashboardPage(),
        '/qualityCheck': (context) => QualityCheckPage(),
        '/statisticAnalysis': (context) => StatisticAnalysisPage(),
      },
    );
  }
}

// tempuser@example.com
// temppassword