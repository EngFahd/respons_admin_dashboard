import 'package:flutter/material.dart';
import 'package:repons_admin_dash/utils/app_styles.dart';

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
          ),
        ),
        onPressed: () {},
        child: Text(
          "Send Money",
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: color ?? Colors.white,
          ),
        ),
      ),
    );
    
  }
}
