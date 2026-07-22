import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/loans/model/loans_header_model.dart';
import 'package:flutter/cupertino.dart';

abstract class LoansHeaderData {
  static const List<LoansHeaderModel> data = [
    LoansHeaderModel(
      title: "Personal Loans",
      icon: AppAssets.iconsAccounts,
      color: Color(0xff396AFF),
      price: 50000,
    ),
    LoansHeaderModel(
      title: "Corporate Loans",
      icon: AppAssets.iconsCorporateLoans,
      color: Color(0xffFFBB38),
      price: 100000,
    ),
    LoansHeaderModel(
      title: "Business Loans",
      icon: AppAssets.iconsBusinessLoans,
      color: Color(0xffFF82AC),
      price: 500000,
    ),
    LoansHeaderModel(
      title: "Custom Loans",
      icon: AppAssets.iconsCustomLoans,
      color: Color(0xff16DBCC),
      price: 50000,
    ),
  ];
}
