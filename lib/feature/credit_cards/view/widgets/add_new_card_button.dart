import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class AddNewCardButton extends StatelessWidget {
  const AddNewCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(9),
          ),
        ),
        onPressed: () {},
        child: const Text("Add Card"),
      ),
    );
  }
}
