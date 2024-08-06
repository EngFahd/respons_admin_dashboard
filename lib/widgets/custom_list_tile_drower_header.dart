import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/models/user_info_model.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';

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
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
