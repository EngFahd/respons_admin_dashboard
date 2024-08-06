import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:repons_admin_dash/models/income_detailes_model.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';
import 'package:repons_admin_dash/widgets/all_expenses_header.dart';
import 'package:repons_admin_dash/widgets/custom_container.dart';
import 'package:repons_admin_dash/widgets/incom_detaiels.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

int activeIndex = -1;

class _IncomeSectionState extends State<IncomeSection> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return
        // width >= 1200 && width < 1750
        //     ? const SizedBox()
        //     :
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 1, child: getChart()),
        const Expanded(flex: 2, child: IncomeDetaiels()),
      ],
    );
  }

  getChart() {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (flTouchEvent, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              showTitle: false,
              value: 40,
              radius: activeIndex == 0 ? 60 : 50,
              color: const Color(0xff208bc7),
            ),
            PieChartSectionData(
              showTitle: false,
              value: 25,
              radius: activeIndex == 1 ? 60 : 50,
              color: const Color(0xff4db7f2),
            ),
            PieChartSectionData(
              showTitle: false,
              value: 20,
              radius: activeIndex == 2 ? 60 : 50,
              color: const Color(0xff064060),
            ),
            PieChartSectionData(
              showTitle: false,
              value: 22,
              radius: activeIndex == 3 ? 60 : 50,
              color: const Color(0x0ffe2dcd),
            ),
          ],
        ),
      ),
    );
  }
}
