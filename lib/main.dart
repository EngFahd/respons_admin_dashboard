import 'package:flutter/material.dart';
import 'package:repons_admin_dash/views/admin_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdminDashboard(),
    );
  }
}
