class RecentTrasactionTableModel {
  final String description;
  final String transactionID;
  final String type;
  final String card;
  final String date;
  final double amount;
  final bool isIncome;

  const RecentTrasactionTableModel({
    required this.description,
    required this.transactionID,
    required this.type,
    required this.card,
    required this.date,
    required this.amount,
    required this.isIncome,
  });
}
