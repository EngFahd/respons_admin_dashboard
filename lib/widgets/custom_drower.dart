import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/drower_item_model.dart';
import 'package:repons_admin_dash/models/user_info_model.dart';
import 'package:repons_admin_dash/utils/app_images.dart';
import 'package:repons_admin_dash/widgets/custom_drower_item.dart';
import 'package:repons_admin_dash/widgets/custom_list_tile_drower_header.dart';
import 'package:repons_admin_dash/widgets/drower_item_list_view.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustemListTileDrowerHeader(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              ),
            ),
          ),

          // add size
          SliverToBoxAdapter(child: SizedBox(height: 8)),

          DrowerItemsListView(),

          SliverFillRemaining(
            // important
            hasScrollBody: false,
            child: Column(
              children: [
                // add some size
                Expanded(child: SizedBox(height: 20)),

                InActiveItem(
                  drowerItemModel: DrowerItemModel(
                    title: "Settings",
                    image: Assets.imagesSettings,
                  ),
                ),
                
                InActiveItem(
                  drowerItemModel: DrowerItemModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),

                // add some size
                SizedBox(height: 48)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
