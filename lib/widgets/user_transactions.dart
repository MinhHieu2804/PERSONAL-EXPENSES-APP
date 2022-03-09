import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/new_transaction.dart';
import 'package:personal_expenses_app/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New shirts', amount: 19.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String titleTx, double amountTx) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: titleTx,
        amount: amountTx,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
