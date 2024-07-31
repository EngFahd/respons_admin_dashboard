
import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/user_info_model.dart';
import 'package:repons_admin_dash/utils/app_images.dart';
import 'package:repons_admin_dash/widgets/custom_list_tile_drower_header.dart';

class QuickInvoiceListView extends StatelessWidget {
  const QuickInvoiceListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                child: CustemListTileDrowerHeader(userInfoModel: e)))
            .toList(),
      ),
    );
    // anather soluations but must set height(gess work)
    // return SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //       padding: EdgeInsets.zero,
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: CustemListTileDrowerHeader(
    //             userInfoModel: items[index],
    //           ),
    //         );

    //         // return
    //       }),
    // );
  }
}
