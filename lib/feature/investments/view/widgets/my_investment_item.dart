import 'package:flutter/material.dart';

class MyInvestmentItem extends StatelessWidget {
  const MyInvestmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
