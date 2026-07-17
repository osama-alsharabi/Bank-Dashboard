import 'package:bank_dashboard/feature/investments/data/my_investment_data.dart';
import 'package:bank_dashboard/feature/investments/view/widgets/my_investment_item.dart';
import 'package:flutter/material.dart';

class MyInvestmentListView extends StatelessWidget {
  const MyInvestmentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: MyInvestmentData.data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.5),
          child: MyInvestmentItem(
            myInvestmentModel: MyInvestmentData.data[index],
          ),
        );
      },
    );
  }
}
