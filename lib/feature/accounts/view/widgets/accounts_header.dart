import 'package:bank_dashboard/feature/accounts/data/accounts_header_data.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/account_header_item.dart';
import 'package:flutter/material.dart';

class AccountsHeader extends StatelessWidget {
  const AccountsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AccountsHeaderData.data
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: AccountHeaderItem(accountsHeaderModel: e.value),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
