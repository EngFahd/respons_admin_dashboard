import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/models/user_info_model.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';

class CustemListTileDrowerHeader extends StatelessWidget {
  const CustemListTileDrowerHeader({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        // minVerticalPadding: 0,
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
