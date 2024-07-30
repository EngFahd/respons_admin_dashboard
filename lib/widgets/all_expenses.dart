import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/models/all_expenses_item_model.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';
import 'package:repons_admin_dash/utils/app_images.dart';
import 'package:repons_admin_dash/widgets/all_expenses_header.dart';
import 'package:repons_admin_dash/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Expanded(
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16),
            AllExpensesItemListView()
          ],
        ),
      ),
    );
  }
}

