
// model class for transactions, for use in profile page to show the daily transactions
class Transactions {

  final String user;
  final String day;
  final String time;
  final String amount;
  final bool isDebitOrCredit;

  Transactions({required this.user, required this.day, required this.time, required this.amount, required this.isDebitOrCredit});
  
}