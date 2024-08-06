import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/all_expenses_item_model.dart';
import 'package:repons_admin_dash/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpencesItem extends StatelessWidget {
  const AllExpencesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
