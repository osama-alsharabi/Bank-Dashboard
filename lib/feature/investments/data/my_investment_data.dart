import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/investments/model/my_investment_model.dart';

abstract class MyInvestmentData {
  static const List<MyInvestmentModel> data = [
    MyInvestmentModel(
      name: "Apple Store",
      category: "E-commerce, Marketplace",
      icon: AppAssets.iconsApple,
      investmentValue: 54000,
      returnPercentage: 16,
      isPositive: true,
    ),
    MyInvestmentModel(
      name: "Samsung Mobile",
      category: "E-commerce, Marketplace",
      icon: AppAssets.iconsSamsung,
      investmentValue: 25300,
      returnPercentage: 4,
      isPositive: false,
    ),
    MyInvestmentModel(
      name: "Tesla Motors",
      category: "Electric Vehicles",
      icon: AppAssets.iconsTesla,
      investmentValue: 8200,
      returnPercentage: 25,
      isPositive: true,
    ),
  ];
}
