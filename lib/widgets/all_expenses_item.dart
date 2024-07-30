import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/models/all_expenses_item_model.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';

class AllExpencesItem extends StatelessWidget {
  const AllExpencesItem({
    super.key,
    required this.allExpensesItemModel,
  });
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xfffafafa),
                ),
                child: SvgPicture.asset(
                  allExpensesItemModel.icon,
                  color: const Color(0xff4EB7F2),
                ),
              ),
              // const Spacer(), s
              Transform.rotate(
                angle: -1.57079633 * 2,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF064061),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            allExpensesItemModel.prise,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
