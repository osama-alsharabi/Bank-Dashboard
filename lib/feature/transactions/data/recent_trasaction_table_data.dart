import 'package:bank_dashboard/feature/transactions/models/recent_trasaction_table_model.dart';

abstract class RecentTrasactionTableData {
  static const List<RecentTrasactionTableModel> data = [
    RecentTrasactionTableModel(
      description: "Spotify Subscription",
      transactionID: "#12548796",
      type: "Shopping",
      card: "1234 ****",
      date: " 28 Jan, 12.30 AM",
      amount: 2.500,
      isIncome: false,
    ),
    RecentTrasactionTableModel(
      description: "Freepik Sales",
      transactionID: "#12548796",
      type: "Transfer",
      card: "1234 ****",
      date: " 25 Jan, 10.40 PM",
      amount: 750,
      isIncome: true,
    ),
    RecentTrasactionTableModel(
      description: "Mobile Service",
      transactionID: "#12548796",
      type: "Service",
      card: "1234 ****",
      date: "20 Jan, 10.40 PM",
      amount: 150,
      isIncome: false,
    ),
    RecentTrasactionTableModel(
      description: "Wilson",
      transactionID: "#12548796",
      type: "Transfer",
      card: "1234 ****",
      date: "15 Jan, 03.29 PM",
      amount: 1050,
      isIncome: false,
    ),
    RecentTrasactionTableModel(
      description: "Emilly",
      transactionID: "#12548796",
      type: "Transfer",
      card: "1234 ****",
      date: "14 Jan, 10.40 PM",
      amount: 840,
      isIncome: true,
    ),
  ];
}
