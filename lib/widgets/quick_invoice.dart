import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';
import 'package:repons_admin_dash/widgets/custom_button.dart';
import 'package:repons_admin_dash/widgets/custom_container.dart';
import 'package:repons_admin_dash/widgets/quick_invoice_form.dart';
import 'package:repons_admin_dash/widgets/quick_invoice_header.dart';
import 'package:repons_admin_dash/widgets/quick_invoice_list_view.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        // padding: 0,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const QuickInvoiceHeader(),

        // add some size
        const SizedBox(height: 24),

        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),

        // add some size
        const SizedBox(height: 12),

        const QuickInvoiceListView(),

        // line
        const Divider(height: 48, color: Color(0xffF1f1f1)),

        const QuickInvoiceForm(),

        // add some size
        const SizedBox(height: 24),
        const Row(
          children: [
            CustomButton(backGround: Colors.white, color: Color(0xff4db7f2)),

            // add some size
            SizedBox(width: 24),

            CustomButton(),
          ],
        )
      ],
    ));
  }
}

