import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/credit_cards/model/card_setting_model.dart';
import 'package:flutter/widgets.dart';

abstract class CardSettingData {
  static const List<CardSettingModel> data = [
    CardSettingModel(
      icon: AppAssets.iconsBlockCard,
      color: Color(0xffFFBB38),
      title: "Block Card",
      description: "Instantly block your card",
    ),
    CardSettingModel(
      icon: AppAssets.iconsChangePinCode,
      color: Color(0xff396AFF),
      title: "Change Pin Code",
      description: "Choose another pin code",
    ),
    CardSettingModel(
      icon: AppAssets.iconsAddToGooglePay,
      color: Color(0xffFF82AC),
      title: "Add to Google Pay",
      description: "Withdraw without any card",
    ),
    CardSettingModel(
      icon: AppAssets.iconsAddToApplePay,
      color: Color(0xff16DBCC),
      title: "Add to Apple Pay",
      description: "Withdraw without any card",
    ),
  ];
}
