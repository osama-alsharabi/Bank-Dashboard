import 'dart:ui';

import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/accounts/model/last_trasaction_model.dart';

abstract class LastTransactionData {
  static const List<LastTrasactionModel> data = [
    LastTrasactionModel(
      image: AppAssets.iconsSpotifySubscriptionIcon,
      color: Color(0xff16DBCC),
      title: "Spotify Subscription",
      date: "12 Jan 2023",
      type: "shopping",
      amount: " 1,500",
      cardNumber: "**** 1234",
      status: "Completed",
      isDisposed: false,
    ),
    LastTrasactionModel(
      image: AppAssets.iconsMobileServiceIcon,
      color: Color(0xff396AFF),
      title: "Mobile Service",
      date: "12 Jan 2023",
      type: "Service",
      amount: " 1,500",
      cardNumber: "**** 1234",
      status: "Completed",
      isDisposed: false,
    ),
    LastTrasactionModel(
      image: AppAssets.iconsEmillyWilsonIcon,
      color: Color(0xffFF82AC),
      title: "Emilly Wilson",
      date: "12 Jan 2023",
      type: "Transfer",
      amount: " 780",
      cardNumber: "**** 1234",
      status: "Completed",
      isDisposed: true,
    ),
  ];
}
