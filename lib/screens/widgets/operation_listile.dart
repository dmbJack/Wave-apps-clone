import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:not_wave/models/enum_typetransaction.dart';
import 'package:not_wave/models/transaction.dart';
import 'package:not_wave/screens/transaction_details_screen.dart';

class OperationListile extends StatelessWidget {
  final Transaction transaction;
  const OperationListile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    switch (transaction.typeTransaction) {
      case TYPETRANSACTION.send:
        return ListTile(
          onTap: (() => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TransactionDetailScreen(transaction: transaction)))),
          title: Text('Transfert to ${transaction.person!.name}'),
          subtitle: Text(
            transaction.getDateFormated(),
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: Text(
            transaction.getTransactionAmount(),
            style: const TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w700),
          ),
        );
      case TYPETRANSACTION.receive:
        return ListTile(
          onTap: (() => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TransactionDetailScreen(transaction: transaction)))),
          title: Text('Receive from ${transaction.person!.name}'),
          subtitle: Text(
            transaction.getDateFormated(),
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: Text(
            transaction.getTransactionAmount(),
            style: const TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w700),
          ),
        );
      case TYPETRANSACTION.withdrawal:
        return ListTile(
          onTap: (() => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TransactionDetailScreen(transaction: transaction)))),
          title: const Text('Withdrawal'),
          subtitle: Text(
            transaction.getDateFormated(),
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: Text(
            transaction.getTransactionAmount(),
            style: const TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w700),
          ),
        );
      default:
        return const Text('Error');
    }
  }
}
