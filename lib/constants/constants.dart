

import 'dart:math';

import 'package:six_dreams_machine_task/constants/transactions_model.dart';

 

// creates list of users details .
List<Transactions> transactions =  List.generate(20, (int index){
 return Transactions(user: 'Anil kumar', day: 'Today', time: "${5 + index}:${(40 + index * 5) % 60} PM", amount: Random().nextInt(100).toString(), isDebitOrCredit: Random().nextBool());
});