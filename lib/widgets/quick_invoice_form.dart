
import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_colors.dart';
import 'package:repons_admin_dash/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            QuickInvoiceTitleTextField(
                hint: "Type customer name", name: "Customer name"),
            SizedBox(width: 16),
            QuickInvoiceTitleTextField(
                hint: "Type customer email", name: "Customer Email")
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            QuickInvoiceTitleTextField(
                hint: "Type customer name", name: "Customer name"),
            SizedBox(width: 16),
            QuickInvoiceTitleTextField(
                hint: "Type customer email", name: "Customer Email")
          ],
        ),
      ],
    );
  }
}

class QuickInvoiceTitleTextField extends StatelessWidget {
  const QuickInvoiceTitleTextField(
      {super.key, required this.name, required this.hint});
  final String name, hint;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Customer name", style: AppStyles.styleMedium16(context)),
          const SizedBox(height: 12),
          CustemTextFieldQickInvoice(hint: hint)
        ],
      ),
    );
  }
}
