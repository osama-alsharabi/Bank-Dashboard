import 'dart:ui';

import 'package:bank_dashboard/core/model/recent_transaction_model.dart';
import 'package:bank_dashboard/core/utils/app_assets.dart';

abstract class RecentTransactionData {
  static List<RecentTransactionModel> data = [
    RecentTransactionModel(
      color: const Color(0x000000ff),
      title: "Deposit from my",
      date: "28 January 2021",
      icon: AppAssets.iconsDeposit,
      isDeposit: false,
    ),
    RecentTransactionModel(
      color: const Color(0x000000ff),
      title: "Deposit Paypal",
      date: "25 January 2021",
      icon: AppAssets.iconsPaypalPaymentPay,
      isDeposit: true,
    ),
    RecentTransactionModel(
      color: const Color(0x000000ff),
      title: "Jemi Wilson",
      date: "21 January 2021",
      icon: AppAssets.iconsMoney,
      isDeposit: true,
    ),
  ];
}
