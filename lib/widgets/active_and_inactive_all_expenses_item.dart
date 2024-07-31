import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/models/all_expenses_item_model.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
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
                  // color: const Color(0xff4EB7F2),
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
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 8,
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

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    // main Container
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // items container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // icon Container
              Container(
                padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: Colors.white.withOpacity(0.1),
                ),
                // svg color
                child: SvgPicture.asset(
                  allExpensesItemModel.icon,
                  colorFilter: const ColorFilter.mode(
                      Color(0xffFFFFFF), BlendMode.srcIn),
                ),
              ),
              // const Spacer(), 
              Transform.rotate(
                angle: -1.57079633 * 2,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFFFFFFFF)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.prise,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
        ],
      ),
    );
  }
}
