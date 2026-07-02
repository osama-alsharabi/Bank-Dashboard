import 'dart:ui';

import 'package:bank_dashboard/core/model/recent_transaction_model.dart';
import 'package:bank_dashboard/core/utils/app_assets.dart';

abstract class RecentTransactionData {
  static List<RecentTransactionModel> data = [
    RecentTransactionModel(
      color: const Color(0xffFFBB38),
      title: "Deposit from my",
      date: "28 January 2021",
      icon: AppAssets.iconsDeposit,
      isDeposit: false,
      price: 8500,
    ),
    RecentTransactionModel(
      color: const Color(0xff471EE8),
      title: "Deposit Paypal",
      date: "25 January 2021",
      icon: AppAssets.iconsPaypalPaymentPay,
      isDeposit: true,
      price: 5000,
    ),
    RecentTransactionModel(
      color: const Color(0xff16DBCC),
      title: "Jemi Wilson",
      date: "21 January 2021",
      icon: AppAssets.iconsMoney,
      isDeposit: true,
      price: 8000,
    ),
  ];
}
