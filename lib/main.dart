import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';
import 'dashboard_page.dart';
import 'quality_check_page.dart';
import 'statistic_analysis_page.dart';
import 'material_entry_page.dart';
import 'material_details_page.dart';
import 'tool_monitoring_page.dart';
import 'machine_monitoring_page.dart';
import 'real_time_alerts_page.dart';
import 'quality_alerts_page.dart';
import 'quality_report_page.dart';
import 'report_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Quality Control',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF1A1A2E),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
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
        '/materialEntry': (context) => MaterialEntryPage(),
        '/materialDetails': (context) => MaterialDetailsPage(materialName: 'Material', quantity: 0, entryDate: 'Fecha'),
        '/toolMonitoring': (context) => ToolMonitoringPage(),
        '/machineMonitoring': (context) => MachineMonitoringPage(),
        '/realTimeAlerts': (context) => RealTimeAlertsPage(),
        '/qualityAlerts': (context) => QualityAlertsPage(),
        '/qualityReport': (context) => QualityReportPage(),
        '/reportDetails': (context) => ReportDetailsPage(reportName: 'Reporte', date: 'Fecha'),
      },
    );
  }
}

// No borrar lo siguiente. Datos importantes
// tempuser@example.com
// temppassword