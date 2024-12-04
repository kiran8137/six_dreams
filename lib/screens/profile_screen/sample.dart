import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:six_dreams_machine_task/constants/constants.dart';
import 'package:six_dreams_machine_task/widgets/custom_card_profilpage.dart';
import 'package:six_dreams_machine_task/widgets/myprofile_text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        title:
            const MyProfileTextWidget(profileName: "My Profile", fontSize: 16),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset("assets/profile.png"),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "John Deo",
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Customcartprofilepage(number: '12,345', isAmount: false, text: 'Customers',),
                Customcartprofilepage(number: '8,765', isAmount: true, text: 'Current Amount',),
                 
              ],
            ),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context,index){
                 final transaction = transactions[index];
                    return ListTile(
                      title: Text(transaction.user,style: GoogleFonts.poppins(fontSize: 13)),
                      subtitle: Text("${transaction.day} | ${transaction.time}" ,style: GoogleFonts.poppins(color:Colors.grey,fontSize: 12)),
                        

                       trailing: transaction.isDebitOrCredit == true ? 
                       Text("+ ₹${transaction.amount}",style: GoogleFonts.poppins(color: Colors.green,fontSize: 16)) : 
                       Text("+ ₹${transaction.amount}",style: GoogleFonts.poppins(color: Colors.white,fontSize: 16)),
                    );
                }, 
                separatorBuilder: (context,index)=>const SizedBox(height: 10), 
                itemCount: transactions.length
                )
              )
          ],
        ),
      )),
    );
  }
}

