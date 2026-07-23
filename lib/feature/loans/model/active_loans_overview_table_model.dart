class ActiveLoansOverviewTableModel {
  final int sLNo;
  final double loanMoney;
  final double leftToRepay;
  final String duration;
  final int interestRate;
  final String installment;

  const ActiveLoansOverviewTableModel({
    required this.sLNo,
    required this.loanMoney,
    required this.leftToRepay,
    required this.duration,
    required this.interestRate,
    required this.installment,
  });
}
