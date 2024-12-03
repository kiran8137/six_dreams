import 'package:flutter/material.dart';
import 'package:six_dreams_machine_task/constants/constants.dart';
import 'package:six_dreams_machine_task/widgets/transaction_tile.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          
          return TransactionTile(transaction: transaction); //each transaction tile
        },
        separatorBuilder: (context, index) =>
            const SizedBox(height: 10),
        itemCount: transactions.length);
  }
}