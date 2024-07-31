import 'package:flutter/material.dart';
import 'package:repons_admin_dash/widgets/all_expenses.dart';
import 'package:repons_admin_dash/widgets/custom_drower.dart';
import 'package:repons_admin_dash/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Row(
        children: [
          Expanded(child: CustomDrower()),
          SizedBox(width: 32),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // SizedBox(height: 40),
                AllExpenses(),
                QuickInvoice(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
