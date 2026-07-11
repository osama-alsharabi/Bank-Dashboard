import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/accounts/model/accounts_header_model.dart';
import 'package:flutter/cupertino.dart';

abstract class AccountsHeaderData {
  static const List<AccountsHeaderModel> data = [
    AccountsHeaderModel(
      title: "My Balance",
      icon: AppAssets.iconsAccountMyBalance,
      amount: 12750,
      color: Color(0xffFFBB38),
    ),
    AccountsHeaderModel(
      title: "Income",
      icon: AppAssets.iconsAccountIncome,
      amount: 5600,
      color: Color(0xff396AFF),
    ),
    AccountsHeaderModel(
      title: "Expense",
      icon: AppAssets.iconsAccountExpense,
      amount: 3460,
      color: Color(0xffFF82AC),
    ),
    AccountsHeaderModel(
      title: "Total Saving",
      icon: AppAssets.iconsAccountTotalSaving,
      amount: 7920,
      color: Color(0xff16DBCC),
    ),
  ];
}
