


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferButton extends StatelessWidget {
  const ReferButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      //screenWidth < 400 ? 50 : 55,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Copy Refer link',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.sp),
                            ),
                            Icon(Icons.copy,size: 13.sp),
                          ],
                        ),
    );
  }
}

