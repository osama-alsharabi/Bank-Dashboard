import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_setting_item.dart';
import 'package:flutter/material.dart';

class CardSettingContainer extends StatelessWidget {
  const CardSettingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: CardSettingItem(),
          );
        },
      ),
    );
  }
}
