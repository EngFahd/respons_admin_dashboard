import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';
import 'package:repons_admin_dash/widgets/all_expenses.dart';
import 'package:repons_admin_dash/widgets/custom_drower.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Row(
        children: [
          Expanded(
            child: CustomDrower(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40, bottom: 24),
              child: AllExpenses(),
            ),
          )
        ],
      ),
    );
  }
}
