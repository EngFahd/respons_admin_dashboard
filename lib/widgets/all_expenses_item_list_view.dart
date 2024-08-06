import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/all_expenses_item_model.dart';
import 'package:repons_admin_dash/utils/app_images.dart';
import 'package:repons_admin_dash/widgets/all_expenses_item.dart';

// as map functions
class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

final List<AllExpensesItemModel> items = [
  const AllExpensesItemModel(
      icon: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      prise: r"$20,129"),
  const AllExpensesItemModel(
      icon: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      prise: r"$20,129"),
  const AllExpensesItemModel(
      icon: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      prise: r"$20,129"),
];
int selectedIndex = 0;

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // beacause we need index of item    > x(Map())
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: InkWell(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: AllExpencesItem(
                isSelected: selectedIndex == index,
                allExpensesItemModel: item,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
