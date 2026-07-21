import 'package:bank_dashboard/feature/credit_cards/view/widgets/add_new_card_container_body.dart';
import 'package:flutter/material.dart';

class AddNewCardContainer extends StatelessWidget {
  const AddNewCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const AddNewCardContainerBody(),
    );
  }
}
