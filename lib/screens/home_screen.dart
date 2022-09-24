import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:not_wave/models/enum_typetransaction.dart';
import 'package:not_wave/models/person.dart';
import 'package:not_wave/screens/widgets/operation_listile.dart';

import '../models/transaction.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   final List<Operation> listOperation = [
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//     Operation(title: 'Witdrawal'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(245, 244, 246, 1),
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar.medium(
//             backgroundColor: const Color.fromRGBO(31, 75, 255, 1),
//             leading: const Icon(
//               Icons.settings_outlined,
//               size: 30,
//             ),
//             centerTitle: true,
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Text(
//                   '10 000 FCFA',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                       fontWeight: FontWeight.w700),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.visibility,
//                       color: Colors.white,
//                     )),
//               ],
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Column(
//               children: [
//                 Stack(children: [
//                   Container(
//                     width: double.infinity,
//                     height: 290,
//                     color: const Color.fromRGBO(31, 75, 255, 1),
//                   ),
//                   Positioned(
//                       bottom: 0,
//                       child: Container(
//                         width: size.width,
//                         height: 180,
//                         decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(20),
//                               topRight: Radius.circular(20),
//                             )),
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 30.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: const [
//                                   CircleAvatar(
//                                     backgroundColor:
//                                         Color.fromRGBO(31, 75, 255, 0.3),
//                                     radius: 35,
//                                     child: Icon(
//                                       Icons.person,
//                                       color: Color.fromRGBO(31, 75, 255, 1),
//                                       size: 45,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Send',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.w600),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 width: 80,
//                               ),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: const [
//                                   CircleAvatar(
//                                     backgroundColor:
//                                         Color.fromRGBO(255, 233, 173, 1),
//                                     radius: 35,
//                                     child: Icon(
//                                       Icons.lightbulb,
//                                       color: Color.fromRGBO(255, 195, 31, 1),
//                                       size: 45,
//                                     ),
//                                   ),
//                                   Text('Bills',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600))
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       )),
//                   Positioned(
//                       top: 10,
//                       left: (size.width - 250) / 2,
//                       child: Image.asset(
//                         'lib/assets/images/wave_qr.jpg',
//                         width: 250,
//                       )),
//                 ]),
//               ],
//             ),
//           ),
//           SliverToBoxAdapter(
//               child: Wrap(
//             children: [
//               ...List.from(listOperation).map((e) => operationListile(e))
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }

// class Operation {
//   String title;
//   Operation({
//     required this.title,
//   });
// }

// Widget operationListile(Operation widget) {
//   return ListTile(
//     title: Text(widget.title),
//   );
// }

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Transaction> listOperation = [
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 1033500),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 1399100),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.receive,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.send,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
    Transaction(
        date: DateTime.now(),
        typeTransaction: TYPETRANSACTION.withdrawal,
        person:
            Person(name: 'Doumbia', lastName: 'Moussa', number: '0152817370'),
        amount: 100000),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int totalAmount = 0;
    for (var transaction in listOperation) {
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
                        '$totalAmount FCFA',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility,
                            color: Colors.white,
                            size: 17,
                          )),
                    ],
                  ),
                ),
                // background: Image.network(
                //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                //   fit: BoxFit.cover,
                // ),
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
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(31, 75, 255, 0.3),
                                  radius: 30,
                                  child: Icon(
                                    Icons.person,
                                    color: Color.fromRGBO(31, 75, 255, 1),
                                    size: 45,
                                  ),
                                ),
                                Text(
                                  'Send',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(255, 233, 173, 1),
                                  radius: 30,
                                  child: Icon(
                                    Icons.lightbulb,
                                    color: Color.fromRGBO(255, 195, 31, 1),
                                    size: 45,
                                  ),
                                ),
                                Text('Bills',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600))
                              ],
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
                      ...List.from(listOperation)
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
