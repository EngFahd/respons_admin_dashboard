import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:repons_admin_dash/utils/size_config.dart';
import 'package:repons_admin_dash/widgets/adaptive_layout.dart';
import 'package:repons_admin_dash/widgets/custom_drower.dart';
import 'package:repons_admin_dash/widgets/dashboard_desktop_layout.dart';
import 'package:repons_admin_dash/widgets/dashboard_mobile_layout.dart';
import 'package:repons_admin_dash/widgets/dashboard_tablet_layout.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final GlobalKey<ScaffoldState> scaffoldGlobalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      key: scaffoldGlobalKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  scaffoldGlobalKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              backgroundColor: const Color(0xffF7F9FA))
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrower() : null,
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobile: (context) => const DashBoardMobileLayout(),
        tablet: (context) => const DashboardTabletLayout(),
        desktop: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
