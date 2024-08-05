import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/transation_model.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transationModel});
  final TransationModel transationModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAfA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transationModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transationModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transationModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: !transationModel.isIncome
                ? const Color(0xfff3735e)
                : const Color(0xff7cdb7a),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
