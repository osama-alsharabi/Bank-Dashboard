import 'package:bank_dashboard/core/interface/sealed_ui_type.dart';
import 'package:bank_dashboard/core/model/drawer_model.dart';
import 'package:bank_dashboard/core/utils/app_assets.dart';

abstract class DrawerData {
  static List<DrawerModel> drawerData = [
    DrawerModel(
      title: "Dashboard",
      icon: AppAssets.iconsHome,
      uiType: Overview(),
    ),
    DrawerModel(
      title: "Transactions",
      icon: AppAssets.iconsTransactions,
      uiType: Transactions(),
    ),
    DrawerModel(
      title: "Accounts",
      icon: AppAssets.iconsAccounts,
      uiType: Accounts(),
    ),
    DrawerModel(
      title: "Investments",
      icon: AppAssets.iconsInvestments,
      uiType: Investments(),
    ),
    DrawerModel(
      title: "Credit Cards",
      icon: AppAssets.iconsCreditCard,
      uiType: CreditCards(),
    ),
    DrawerModel(title: "Loans", icon: AppAssets.iconsLoans, uiType: Loans()),
    DrawerModel(
      title: "Services",
      icon: AppAssets.iconsServices,
      uiType: Services(),
    ),
    DrawerModel(
      title: "My Privileges",
      icon: AppAssets.iconsMyPrivileges,
      uiType: MyPrivileges(),
    ),
    DrawerModel(
      title: "Setting",
      icon: AppAssets.iconsSettings,
      uiType: Setting(),
    ),
  ];
}
