import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:six_dreams_machine_task/constants/constants.dart';
import 'package:six_dreams_machine_task/constants/transactions_model.dart';
import 'package:six_dreams_machine_task/controller/provider/provider.dart';
import 'package:six_dreams_machine_task/screens/profile_screen/header_peresistent.dart';
import 'package:six_dreams_machine_task/widgets/app_bar.dart';
import 'package:six_dreams_machine_task/widgets/custom_card_profilpage.dart';
import 'package:six_dreams_machine_task/widgets/myprofile_text_widget.dart';
import 'package:six_dreams_machine_task/widgets/transaction_list.dart';
import 'package:six_dreams_machine_task/widgets/transaction_tile.dart';
import 'package:six_dreams_machine_task/widgets/user_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<ScrollControllerProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: appBarProfileScreen(context),
      body:   Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Scrollbar(
          controller: scrollController,
          child: CustomScrollView
          (
            controller: scrollController,
            slivers: <Widget>[
              
             
              
              //  SliverAppBar(
              //   automaticallyImplyLeading: false,
                
              //   //pinned: true,
              //   expandedHeight: 300,
          
              //   flexibleSpace: FlexibleSpaceBar(
              //     background:
                      
              //         UserProfileWidget(), // user profile image and name widget
              //   ),
              // ),
              // SliverPersistentHeader(
              //   pinned: true,
              //   floating: false,
              //   delegate: ProfileHeader(minExent: 80, maxExent: 264.0)
              //   ),
             
          
             
          
              // user transaction list
              TransactionList()
            ],
          ),
        ),
      ),
    );
  }
}


