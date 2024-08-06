import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:repons_admin_dash/widgets/all_expenses_header.dart';
import 'package:repons_admin_dash/widgets/all_expenses_item_list_view.dart';
import 'package:repons_admin_dash/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          CustomAllExpensesHeader(titel: "All Expenses"),
          SizedBox(height: 16),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}
