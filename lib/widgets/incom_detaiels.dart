import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/income_detailes_model.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';

class IncomeDetaiels extends StatelessWidget {
  const IncomeDetaiels({super.key});
  static const items = [
    IncomeDetailesModel(
        color: Color(0xff208CC8), title: "Design service", present: "40%"),
    IncomeDetailesModel(
        color: Color(0xff4EB7F2), title: "Design product", present: "25%"),
    IncomeDetailesModel(
        color: Color(0xff064061), title: "Product royalti", present: "20%"),
    IncomeDetailesModel(
        color: Color(0xffE2DECD), title: "Other", present: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeDetailesItem(incomeDetailesModel: e)).toList(),
    );

    // ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return IncomeDetailesItem(incomeDetailesModel: items[index]);
    //   },
    // );
  }
}

class IncomeDetailesItem extends StatelessWidget {
  const IncomeDetailesItem({super.key, required this.incomeDetailesModel});
  final IncomeDetailesModel incomeDetailesModel;
  @override
  Widget build(BuildContext context) {
    // log(MediaQuery.sizeOf(context).width.toString());
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailesModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailesModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailesModel.present,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
