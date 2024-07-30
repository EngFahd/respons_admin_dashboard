import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';

class CustemListTileDrower extends StatelessWidget {
  const CustemListTileDrower(
      {super.key,
      required this.image,
      required this.title,
      required this.subTile});
  final String image, title, subTile;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subTile,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
