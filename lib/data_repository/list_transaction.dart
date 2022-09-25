import 'package:not_wave/models/person.dart';
import 'package:not_wave/models/transaction.dart';
import '../models/enum_status_transaction.dart';
import '../models/enum_typetransaction.dart';
import '../resources/id_generator.dart';

class ListTransaction {
  static final List<Transaction> transactions = [
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 1033500),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 1399100),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        status: TRANSACTIONSTATUS.completed,
        id: getIdGenerate(10),
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
  ];
  const ListTransaction();
}
