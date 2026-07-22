import 'package:flutter/material.dart';

class CardSettingContainer extends StatelessWidget {
  const CardSettingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
