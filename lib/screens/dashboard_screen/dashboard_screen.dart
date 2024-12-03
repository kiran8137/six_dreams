import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:six_dreams_machine_task/widgets/app_bar.dart';
import 'package:six_dreams_machine_task/widgets/banner_widget.dart';
import 'package:six_dreams_machine_task/widgets/custom_card_widget.dart';
import 'package:six_dreams_machine_task/widgets/from_to_container.dart';
import 'package:six_dreams_machine_task/widgets/refer_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    debugPrint(screenHeight.toString());
    debugPrint(screenWidth.toString());
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //custom appbar
              CustomAppBar(screenWidth: screenWidth),

              const SizedBox(height: 10),

              //banner
              const BannerWidget(),

              SizedBox(
                  height: screenWidth < 350 && screenHeight < 600 ? 5 : 10),

              // from to container widget
              const FromToContainer(), 

              SizedBox(height: 15.h),

              Text(
                "Quick Stats",
                style: GoogleFonts.poppins(fontSize: 18.sp
                    //screenWidth < 350 && screenHeight < 600 ? 18 : 20
                    ),
              ),

              SizedBox(height: 10.h),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //quick stats custom widgets
                  CustomCardWidget(
                    icon: Icons.person_add_alt_1_rounded,
                    text: 'Customer',
                    number: '12,345',
                    isAmount: false,
                    width: 155,
                  ),
                  CustomCardWidget(
                    icon: Icons.person_add_alt_1_rounded,
                    text: 'Customer',
                    number: '12,345',
                    isAmount: true,
                    width: 155,
                  ),
                ],
              ),

              SizedBox(height: 15.h),

              // earned from cricket widget
              const CustomCardWidget(
                  icon: Icons.sports_cricket,
                  text: 'earned from cricket',
                  number: "654",
                  isAmount: true,
                  width: double.infinity),
              SizedBox(height: 15.h),

              //refer button
              const ReferButton()
            ],
          ),
        )));
  }
}
