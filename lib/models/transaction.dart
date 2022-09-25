import 'package:intl/intl.dart';
import 'package:not_wave/models/enum_status_transaction.dart';
import 'package:not_wave/models/person.dart';
import 'package:not_wave/resources/amount_format.dart';
import 'package:not_wave/resources/fee.dart';

import 'enum_typetransaction.dart';

class Transaction {
  DateTime date;
  TYPETRANSACTION typeTransaction;
  Person? person;
  int amount;
  String id;
  TRANSACTIONSTATUS status;
  Transaction({
    required this.date,
    required this.typeTransaction,
    this.person,
    required this.amount,
    required this.id,
    required this.status,
  });

  String getTransactionTyp() {
    switch (typeTransaction) {
      case TYPETRANSACTION.receive:
        return 'Received from ${person!.getName()} ${person!.number}';

      case TYPETRANSACTION.send:
        return 'Transfert to ${person!.name} ${person!.number}';

      case TYPETRANSACTION.withdrawal:
        return 'Withdrawal';

      default:
        return 'Nothing';
    }
  }

  String getTransactionStatus() {
    switch (status) {
      case TRANSACTIONSTATUS.blocked:
        return 'Blocked';

      case TRANSACTIONSTATUS.completed:
        return 'Completed';

      case TRANSACTIONSTATUS.insufficientAmount:
        return 'Insufficient amount';

      default:
        return 'Nothing';
    }
  }

  String getTransactionAmount() {
    switch (typeTransaction) {
      case TYPETRANSACTION.send:
        return '-${formateAmount(amount)}F';
      case TYPETRANSACTION.receive:
        return '${formateAmount(amount)}F';
      case TYPETRANSACTION.withdrawal:
        return '-${formateAmount(amount)}F';
      default:
        return '0F';
    }
  }

  String getFee() {
    if (typeTransaction == TYPETRANSACTION.send) {
      return '${removeFee(amount)}F';
    } else {
      return '0F';
    }
  }

  String getDateFormated(){
    return '${DateFormat('d MMMM y').format(date)} at ${DateFormat.jm().format(date)}';
  }
}
