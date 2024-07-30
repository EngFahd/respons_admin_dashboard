import 'package:flutter/material.dart';
import 'package:repons_admin_dash/widgets/adaptive_layout.dart';
import 'package:repons_admin_dash/widgets/dashboard_desktop_layout.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobile: (context) => const SizedBox(),
        tablet: (context) => const SizedBox(),
        desktop: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
