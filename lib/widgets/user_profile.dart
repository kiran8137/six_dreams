import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:six_dreams_machine_task/widgets/custom_card_profilpage.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Center(
        child: Container(
          child: Image.asset("assets/profile.png"),
        ),
      ),
      SizedBox(height: 5.h),
      Text(
        "John Deo",
        style: GoogleFonts.poppins(fontSize: 20.sp),
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //custom widgets for user's account or profile details or than name and photo
          Customcartprofilepage(
            number: '12,345',
            isAmount: false,
            text: 'Customers',
          ),
          Customcartprofilepage(
            number: '8,765',
            isAmount: true,
            text: 'Current Amount',
          ),
        ],
      ),
    ]));
  }
}
