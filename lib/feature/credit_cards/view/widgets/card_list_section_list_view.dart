import 'package:bank_dashboard/feature/credit_cards/data/card_list_data.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_list_item.dart';
import 'package:flutter/material.dart';

class CardListSectionListView extends StatelessWidget {
  const CardListSectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: CardListData.data.length,
      itemBuilder: (context, index) {
        return CardListItem(cardListModel: CardListData.data[index]);
      },
    );
  }
}
