import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/drower_item_model.dart';
import 'package:repons_admin_dash/utils/app_images.dart';
import 'package:repons_admin_dash/widgets/custom_drower_item.dart';

class DrowerItemsListView extends StatefulWidget {
  const DrowerItemsListView({
    super.key,
  });

  @override
  State<DrowerItemsListView> createState() => _DrowerItemsListViewState();
}
// for active items
int activeIndex = 0;

// list title
final List<DrowerItemModel> items = [
  const DrowerItemModel(
    title: "Dashboard",
    image: Assets.imagesDashboard,
  ),
  const DrowerItemModel(
    title: "My Transaction",
    image: Assets.imagesMyTransctions,
  ),
  const DrowerItemModel(
    title: "Statistics",
    image: Assets.imagesStatistics,
  ),
  const DrowerItemModel(
    title: "Wallet Account",
    image: Assets.imagesWalletAccount,
  ),
  const DrowerItemModel(
    title: "My Investments",
    image: Assets.imagesMyInvestments,
  ),
];

class _DrowerItemsListViewState extends State<DrowerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
              print(activeIndex);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrowerItem(
              isActive: activeIndex == index,
              drowerItemModel: items[index],
            ),
          ),
        );
      },
    );
  }
}
