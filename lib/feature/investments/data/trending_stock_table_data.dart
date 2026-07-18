import 'package:bank_dashboard/feature/investments/model/trending_stock_table_model.dart';

abstract class TrendingStockTableData {
  static const List<TrendingStockTableModel> data = [
    TrendingStockTableModel(
      name: "Trivago",
      price: 520,
      sLNo: 01,
      returnPrecent: 5,
    ),
    TrendingStockTableModel(
      name: "Canon",
      price: 480,
      sLNo: 02,
      returnPrecent: 10,
    ),
    TrendingStockTableModel(
      name: "Uber Food",
      price: 350,
      sLNo: 03,
      returnPrecent: 3,
    ),
    TrendingStockTableModel(
      name: "Nokia",
      price: 940,
      sLNo: 04,
      returnPrecent: 2,
    ),
    TrendingStockTableModel(
      name: "Tiktok",
      price: 670,
      sLNo: 05,
      returnPrecent: 12,
    ),
  ];
}
