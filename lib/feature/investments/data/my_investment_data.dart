import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/investments/model/my_investment_model.dart';
import 'package:flutter/widgets.dart';

abstract class MyInvestmentData {
  static const List<MyInvestmentModel> data = [
    MyInvestmentModel(
      color: Color(0xffFFE0EB),
      name: "Apple Store",
      category: "E-commerce, Marketplace",
      icon: AppAssets.iconsApple,
      investmentValue: 54000,
      returnPercentage: 16,
      isPositive: true,
    ),
    MyInvestmentModel(
      color: Color(0xffE7EDFF),
      name: "Samsung Mobile",
      category: "E-commerce, Marketplace",
      icon: AppAssets.iconsSamsung,
      investmentValue: 25300,
      returnPercentage: 4,
      isPositive: false,
    ),
    MyInvestmentModel(
      color: Color(0xffFFF5D9),
      name: "Tesla Motors",
      category: "Electric Vehicles",
      icon: AppAssets.iconsTesla,
      investmentValue: 8200,
      returnPercentage: 25,
      isPositive: true,
    ),
  ];
}
