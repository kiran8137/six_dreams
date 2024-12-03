import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcartprofilepage extends StatelessWidget {
  const Customcartprofilepage({
    super.key, required this.number, required this.isAmount, required this.text
  });
  
  final String number;
  final bool isAmount;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 155.w,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
            isAmount?
            Text(
              '₹$number',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 18.sp),
            ):
            Text(
              number,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 18.sp),
            ),
            Text(
               text,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 13.sp),
            ),
          ],
        ),
      ),
    );
  }
}
