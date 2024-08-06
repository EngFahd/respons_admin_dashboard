import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repons_admin_dash/models/drower_item_model.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';

class CustomDrowerItem extends StatelessWidget {
  const CustomDrowerItem(
      {super.key, required this.drowerItemModel, required this.isActive});
  final DrowerItemModel drowerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(drowerItemModel: drowerItemModel)
        : InActiveItem(drowerItemModel: drowerItemModel);
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drowerItemModel,
  });

  final DrowerItemModel drowerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drowerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.drowerItemModel});
  final DrowerItemModel drowerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drowerItemModel.title,
          style: AppStyles.styleBold16(context)
              .copyWith(color: const Color(0xFF4EB7F2)),
        ),
      ),
      trailing: Container(
        width: 4,
        decoration: const BoxDecoration(color: Color(0xff4eb7f2)),
      ),
    );
  }
}
