import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';
import 'package:repons_admin_dash/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleMedium20(context)
                  .copyWith(color: const Color(0xff064061)),
            ),
            Text(
              "See all",
              style: AppStyles.styleSemiBold20(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            )
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 20,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}
