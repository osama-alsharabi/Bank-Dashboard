import 'package:bank_dashboard/feature/overview/view/widgets/my_card_list_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(height: 240, child: MyCardListView()),
    );
  }
}
