import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF064061),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
