import 'package:flutter/material.dart';
import 'package:repons_admin_dash/widgets/custom_drower.dart';
import 'package:repons_admin_dash/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrower()),
        SizedBox(width: 40),
        Expanded(flex: 2, child: DashBoardMobileLayout()),
      ],
    );
  }
}
