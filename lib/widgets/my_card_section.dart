import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';
import 'package:repons_admin_dash/widgets/custom_container.dart';
import 'package:repons_admin_dash/widgets/custom_dot_indicator.dart';
import 'package:repons_admin_dash/widgets/my_card.dart';
import 'package:repons_admin_dash/widgets/transaction_history.dart';

class MyCardSectionAndTransaction extends StatefulWidget {
  const MyCardSectionAndTransaction({super.key});

  @override
  State<MyCardSectionAndTransaction> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSectionAndTransaction> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My card", style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotIndicator(currentPageIndex: currentPage),
        // const SizedBox(height: 20),
        const Divider(height: 40, color: Color(0xffF1F1F1)),
        const TransactionHistory(),
      ],
    ));
  }
}
