import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:not_wave/models/enum_typetransaction.dart';

import 'package:not_wave/models/transaction.dart';

class TransactionDetailScreen extends StatelessWidget {
  final Transaction transaction;
  const TransactionDetailScreen({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  String showTypTransactionName() {
    if (transaction.typeTransaction == TYPETRANSACTION.send) {
      return 'Received amount';
    } else {
      return 'Withdrawal amount';
    }
  }

  Widget showTypIcon() {
    if (transaction.typeTransaction == TYPETRANSACTION.withdrawal) {
      return CircleAvatar(
          backgroundColor: Colors.blueAccent.withOpacity(0.6),
          child: const Icon(
            MdiIcons.arrowDownBold,
            size: 30,
            color: Colors.white,
          ));
    } else {
      return CircleAvatar(
          backgroundColor: Colors.purple.withOpacity(0.4),
          child: const Icon(
            MdiIcons.account,
            size: 30,
            color: Colors.purple,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Receipt',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            showTypIcon(),
            const SizedBox(
              height: 20,
            ),
            Text(transaction.getTransactionAmount(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              transaction.getTransactionTyp(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              showTypTransactionName(),
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
            Text(
              transaction.getTransactionAmount(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fee',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
            Text(
              transaction.getFee(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Status',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
            Text(
              transaction.getTransactionStatus(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height:
                  (transaction.typeTransaction == TYPETRANSACTION.withdrawal)
                      ? 20
                      : 0,
            ),
            (transaction.typeTransaction == TYPETRANSACTION.withdrawal)
                ? const Text(
                    'Agent Name',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  )
                : Container(),
            (transaction.typeTransaction == TYPETRANSACTION.withdrawal)
                ? Text(
                    '${transaction.person!.getName()} ',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  )
                : Container(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Date & Time',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
            Text(
              transaction.getDateFormated(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'New Balance',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
            const Text(
              '50.525F',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Transaction ID',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
            Text(
              transaction.id.toUpperCase(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'In partnership with UBA',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}
