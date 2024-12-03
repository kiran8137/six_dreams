import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:six_dreams_machine_task/constants/transactions_model.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
  });

  final Transactions transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: ListTile(
        title: Text(transaction.user,style: GoogleFonts.poppins(fontSize: 13.sp)),
        subtitle: Text("${transaction.day} | ${transaction.time}" ,style: GoogleFonts.poppins(color:Colors.grey,fontSize: 12.sp)),
          
      
         trailing: transaction.isDebitOrCredit == true ? 
         Text("+ ₹${transaction.amount}",style: GoogleFonts.poppins(color: Colors.green,fontSize: 16.sp)) : 
         Text("+ ₹${transaction.amount}",style: GoogleFonts.poppins(color: Colors.white,fontSize: 16.sp)),
      ),
    );
  }
}

