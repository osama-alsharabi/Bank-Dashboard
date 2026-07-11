import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/accounts/model/accounts_header_model.dart';

abstract class AccountsHeaderData {
  static const List<AccountsHeaderModel> data = [
    AccountsHeaderModel(
      title: "My Balance",
      icon: AppAssets.iconsAccountMyBalance,
      amount: 12.750,
    ),
    AccountsHeaderModel(
      title: "Income",
      icon: AppAssets.iconsAccountIncome,
      amount: 5.600,
    ),
    AccountsHeaderModel(
      title: "Expense",
      icon: AppAssets.iconsAccountExpense,
      amount: 3.460,
    ),
    AccountsHeaderModel(
      title: "Total Saving",
      icon: AppAssets.iconsAccountTotalSaving,
      amount: 7.920,
    ),
  ];
}
