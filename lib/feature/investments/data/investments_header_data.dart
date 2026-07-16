import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/investments/model/investments_header_model.dart';
import 'package:flutter/cupertino.dart';

abstract class InvestmentsHeaderData {
  static const List<InvestmentsHeaderModel> data = [
    InvestmentsHeaderModel(
      title: "Total Invested Amount",
      icon: AppAssets.iconsTotalInvestedAmount,
      amount: 150000,
      color: Color(0xffDCFAF8),
    ),
    InvestmentsHeaderModel(
      title: "Number of Investments",
      icon: AppAssets.iconsNumberOfInvestments,
      amount: 1250,
      color: Color(0xffFFE0EB),
    ),
    InvestmentsHeaderModel(
      title: "Rate of Return            ",
      icon: AppAssets.iconsRateOfReturn,
      amount: 580,
      color: Color(0xffE7EDFF),
    ),
  ];
}
