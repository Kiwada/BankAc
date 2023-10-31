import 'transaction.dart';

abstract class Account {
  final int agency;
  final int number;
  final String clientName;

  final List<Transaction> transactions = [];

  Account({
    required this.agency,
    required this.number,
    required this.clientName,
  });

  void transaction(TransactionType type, double value,
      [DateTime? date, String? description]) {
    transaction.add(Transaction)(
        type: type,
        value: value,
        date: date ?? DateTime.now(),
        description: description);
  }

  void deposit(double value);
  void withdrawal(double value);
}
