import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';
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
        // const SizedBox(height: 24),
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        const QuickInvoiceListView(),
        const Divider(
          height: 48,
          color: Color(0xffF1f1f1),
        ),
        const QuickInvoiceForm(),
        const SizedBox(height: 24),

        const Row(
          children: [
            CustomButton(
              backGround: Colors.white,
              color: Color(0xff4db7f2),
            ),
            SizedBox(width: 24),
            CustomButton(),
          ],
        )
      ],
    ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.color, this.backGround});
  final Color? color, backGround;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: backGround ?? const Color(0xff4db7f2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Text(
          "Send Money",
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: color ?? Colors.white,
          ),
        ),
      ),
    );
    // const SizedBox(width: 24),
    // Expanded(
    //   child: ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //         padding: const EdgeInsets.all(20),
    //         elevation: 0,
    //         shadowColor: Colors.transparent,
    //         backgroundColor: const Color(0xff4db7f2),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(12),
    //         )),
    //     onPressed: () {},
    //     child: Text(
    //       "Send Money",
    //       style: AppStyles.styleSemiBold16(context).copyWith(
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    // ),
  }
}
