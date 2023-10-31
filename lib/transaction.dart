import 'package:bank/account.dart';

enum TransactionType{
  withdrawal,
  deposit,
  payment,
  revenue,
  interest,
  debitTransfer,
  creditTransfer
}

class Transaction {
  final  TransactionType type;
  final DateTime date;
  final double value;
  final String? description;

  Transaction({
    required this.type,
    required this.date,
    required this.value,
    this.description
     })

  
}
