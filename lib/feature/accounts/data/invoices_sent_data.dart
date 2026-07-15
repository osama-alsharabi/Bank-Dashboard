import 'dart:ui';

import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/feature/accounts/model/invoices_sent_model.dart';

abstract class InvoicesSentData {
  static const List<InvoicesSentModel> invoicesSentData = [
    InvoicesSentModel(
      icon: AppAssets.iconsAccountExpense,
      title: "Apple Store",
      amount: "\$450",
      time: "5h ago",
      color: Color(0xFFDCFAF8),
    ),
    InvoicesSentModel(
      icon: AppAssets.iconsEmillyWilsonIcon,
      title: "Michael",
      amount: "\$160",
      time: "2 days ago",
      color: Color(0xFFFFF5D9),
    ),
    InvoicesSentModel(
      icon: AppAssets.iconsAccountExpense,
      title: "Playstation",
      amount: "\$1085",
      time: "5 days ago",
      color: Color(0xFFE7EDFF),
    ),
    InvoicesSentModel(
      icon: AppAssets.iconsEmillyWilsonIcon,
      title: "William",
      amount: "\$90",
      time: "10 days ago",
      color: Color(0xFFFFE0EB),
    ),
  ];
}
