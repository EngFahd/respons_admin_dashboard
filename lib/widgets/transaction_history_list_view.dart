import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/transation_model.dart';
import 'package:repons_admin_dash/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransationModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: "\$20,129",
        isIncome: false),
    TransationModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: "\$20,129",
        isIncome: true),
    TransationModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: "\$20,129",
        isIncome: true),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(
          transationModel: items[index],
        );
      },
    );
  }
}
