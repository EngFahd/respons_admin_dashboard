import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/all_expenses_item_model.dart';
import 'package:repons_admin_dash/utils/app_images.dart';
import 'package:repons_admin_dash/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        icon: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        prise: r"$20,129"),
    AllExpensesItemModel(
        icon: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        prise: r"$20,129"),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        prise: r"$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpencesItem(allExpensesItemModel: e.value),
          ),
        );
      },
    ).toList());
  }
}
