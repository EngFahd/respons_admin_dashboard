
import 'package:flutter/material.dart';

class CustemTextFieldQickInvoice extends StatelessWidget {
  const CustemTextFieldQickInvoice({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xffAAAAAA)),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
