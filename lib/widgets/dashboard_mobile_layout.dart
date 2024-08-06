import 'package:flutter/material.dart';
import 'package:repons_admin_dash/widgets/all_expenses.dart';
import 'package:repons_admin_dash/widgets/income_section.dart';
import 'package:repons_admin_dash/widgets/my_card_section.dart';
import 'package:repons_admin_dash/widgets/quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // SizedBox(height: 40),
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
          SizedBox(height: 40),
          MyCardSectionAndTransaction(),
          IncomeSection(),
        ],
      ),
    );
  }
}
