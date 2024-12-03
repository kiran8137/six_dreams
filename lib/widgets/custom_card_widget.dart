import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.number,
    required this.isAmount,
    required this.width,
  });

  final IconData icon;
  final String number;
  final bool isAmount;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: width,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 20.h,
                ),
                  Icon(
                  Icons.arrow_forward_ios,
                  size: 20.h,
                )
              ],
            ),
            isAmount
                ? Text(
                    '₹${number}',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 20.sp),
                  )
                : Text(
                    number,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 20.sp),
                  ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
