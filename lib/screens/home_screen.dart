import 'package:flutter/material.dart';
import 'package:not_wave/data_repository/list_transaction.dart';
import 'package:not_wave/models/enum_typetransaction.dart';
import 'package:not_wave/screens/widgets/action_bulle_widget.dart';
import 'package:not_wave/screens/widgets/operation_listile.dart';

import '../models/transaction.dart';
import '../resources/amount_format.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHide = false;
  final List<Transaction> listTransaction = ListTransaction.transactions;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int totalAmount = 0;
    for (var transaction in listTransaction) {
      if (transaction.typeTransaction == TYPETRANSACTION.receive) {
        totalAmount += transaction.amount;
      } else if (transaction.typeTransaction == TYPETRANSACTION.send) {
        totalAmount -= transaction.amount;
      } else if (transaction.typeTransaction == TYPETRANSACTION.withdrawal) {
        totalAmount -= transaction.amount;
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 244, 246, 1),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 5,
              leading: const Icon(
                Icons.settings_outlined,
                size: 30,
              ),
              backgroundColor: const Color.fromRGBO(31, 75, 255, 1),
              expandedHeight: 100.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        (isHide) ? '******' : '${formateAmount(totalAmount)}F',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                          icon: Icon(
                            (isHide) ? Icons.visibility_off : Icons.visibility,
                            color: Colors.white,
                            size: 17,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: 290,
                  color: const Color.fromRGBO(31, 75, 255, 1),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      width: size.width,
                      height: 180,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ActionBulle(
                              label: 'Send',
                              colorsBulle: Color.fromRGBO(31, 75, 255, 1),
                              iconBulle: Icons.person,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            ActionBulle(
                              label: 'Bills',
                              colorsBulle: Color.fromRGBO(255, 195, 31, 1),
                              iconBulle: Icons.lightbulb,
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 10,
                    left: (size.width - 250) / 2,
                    child: Image.asset(
                      'lib/assets/images/wave_qr.jpg',
                      width: 250,
                    )),
              ]),
              const SizedBox(
                height: 10,
              ),
              Container(
                  color: Colors.white,
                  child: Wrap(
                    children: [
                      ...List.from(listTransaction)
                          .map((transaction) => OperationListile(
                                transaction: transaction,
                              ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
