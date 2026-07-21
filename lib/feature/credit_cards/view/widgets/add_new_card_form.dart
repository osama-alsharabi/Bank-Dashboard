import 'package:bank_dashboard/feature/credit_cards/view/widgets/add_new_card_text_field_with_title.dart';
import 'package:flutter/material.dart';

class AddNewCardForm extends StatelessWidget {
  const AddNewCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AddNewCardTextFieldWithTitle(
                hasArrowIcon: false,
                hint: "Classic",
                title: "Card Type",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: AddNewCardTextFieldWithTitle(
                hasArrowIcon: false,
                hint: "My Cards",
                title: "Name On Card",
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: AddNewCardTextFieldWithTitle(
                hasArrowIcon: false,
                hint: "**** **** **** ****",
                title: "Card Number",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: AddNewCardTextFieldWithTitle(
                hasArrowIcon: true,
                hint: "25 January 2025",
                title: "Expiration Date",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
