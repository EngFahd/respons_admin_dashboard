import 'package:flutter/material.dart';
import 'package:repons_admin_dash/widgets/all_expenses.dart';
import 'package:repons_admin_dash/widgets/all_expenses_header.dart';
import 'package:repons_admin_dash/widgets/custom_container.dart';
import 'package:repons_admin_dash/widgets/custom_drower.dart';
import 'package:repons_admin_dash/widgets/income_section.dart';
import 'package:repons_admin_dash/widgets/my_card_section.dart';
import 'package:repons_admin_dash/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Row(
        children: [
          // firest section
          Expanded(child: CustomDrower()),
          SizedBox(width: 32),
          // second section
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            AllExpenses(),
                            SizedBox(height: 24),
                            QuickInvoice(),
                          ],
                        ),
                      ),
                      SizedBox(width: 24),
                      // third section
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            MyCardSectionAndTransaction(),
                            SizedBox(height: 24),
                            Expanded(child: IncomeSection()),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IncomSectionChart extends StatelessWidget {
  const IncomSectionChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        CustomAllExpensesHeader(titel: "Income"),
        IncomeSection()
      ],
    ));
  }
}
