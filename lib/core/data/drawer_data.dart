import 'package:bank_dashboard/core/model/drawer_model.dart';
import 'package:bank_dashboard/core/utils/app_assets.dart';

abstract class DrawerData {
  static List<DrawerModel> drawerData = [
    DrawerModel(title: "Dashboard", icon: AppAssets.iconsHome),
    DrawerModel(title: "Transactions", icon: AppAssets.iconsTransactions),
    DrawerModel(title: "Accounts", icon: AppAssets.iconsAccounts),
    DrawerModel(title: "Investments", icon: AppAssets.iconsInvestments),
    DrawerModel(title: "Credit Cards", icon: AppAssets.iconsCreditCard),
    DrawerModel(title: "Loans", icon: AppAssets.iconsLoans),
    DrawerModel(title: "Services", icon: AppAssets.iconsServices),
    DrawerModel(title: "My Privileges", icon: AppAssets.iconsMyPrivileges),
    DrawerModel(title: "Setting", icon: AppAssets.iconsSettings),
  ];
}
