import 'package:not_wave/models/person.dart';

import 'enum_typetransaction.dart';

class Transaction {
  DateTime date;
  TYPETRANSACTION typeTransaction;
  Person? person;
  int amount;
  // String id;
  Transaction({
    required this.date,
    required this.typeTransaction,
    this.person,
    required this.amount,
    // required this.id,
  });
}
