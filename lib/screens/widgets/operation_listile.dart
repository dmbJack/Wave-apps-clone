import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:not_wave/models/enum_typetransaction.dart';
import 'package:not_wave/models/transaction.dart';

class OperationListile extends StatelessWidget {
  final Transaction transaction;
  const OperationListile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    switch (transaction.typeTransaction) {
      case TYPETRANSACTION.send:
        return ListTile(
          title: Text('Transfert to ${transaction.person!.name}'),
          subtitle: Text(
            '${DateFormat('d MMMM y').format(transaction.date)} at ${DateFormat.jm().format(transaction.date)}',
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: Text(
            '${transaction.amount}F',
            style: const TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w700),
          ),
        );
      case TYPETRANSACTION.receive:
        return ListTile(
          title: Text('Receive from ${transaction.person!.name}'),
          subtitle: Text(
            '${DateFormat('d MMMM y').format(transaction.date)} at ${DateFormat.jm().format(transaction.date)}',
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: Text(
            '${transaction.amount}F',
            style: const TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w700),
          ),
        );
      case TYPETRANSACTION.withdrawal:
        return ListTile(
          title: const Text('Withdrawal'),
          subtitle: Text(
            '${DateFormat('d MMMM y').format(transaction.date)} at ${DateFormat.jm().format(transaction.date)}',
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: Text(
            '-${transaction.amount}F',
            style: const TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w700),
          ),
        );
      default:
        return const Text('Error');
    }
  }
}
