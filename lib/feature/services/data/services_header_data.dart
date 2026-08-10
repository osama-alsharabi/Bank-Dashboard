import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/services/model/services_header_model.dart';
import 'package:flutter/cupertino.dart';

abstract class ServicesHeaderData {
  static const List<ServicesHeaderModel> data = [
    ServicesHeaderModel(
      icon: AppAssets.iconsLifeInsurance,
      title: "Life Insurance",
      description: "Unlimited protection",
      color: Color(0xff396AFF),
    ),
    ServicesHeaderModel(
      icon: AppAssets.iconsShopping,
      title: "Shopping",
      description: "Buy. Think. Grow",
      color: Color(0xffFFBB38),
    ),
    ServicesHeaderModel(
      icon: AppAssets.iconsSafety,
      title: "Safety",
      description: "We are your allies",
      color: Color(0xff16DBCC),
    ),
  ];
}
