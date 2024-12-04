
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends SliverPersistentHeaderDelegate{


  final double minExent;
  final double maxExent;

  ProfileHeader({required this.minExent, required this.maxExent});
  
  

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
     final progressValue = progress(shrinkOffset);
     return  Material(
      child: Stack(
        children: [
          // Header content with fading effect
          Opacity(
            opacity: progressValue,
            child: Container(
              height: maxExent,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    height: 60.h,
                    width: 60.h,
                child: Image.asset("assets/profile.png")
                ),
                Text(
              "John Deo",
              style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),
            ),
            Container(
              child: Container(
      height: 40.h,
      width: 80.w,
      decoration: BoxDecoration(
        border: Border.all(
            width: 0.9,
            color: const Color.fromARGB(205, 81, 81, 81)
          ),
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15),
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
            
            Text(
              '₹12,345',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 14.sp),
            ),
            
            Text(
               "customer",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 10.sp),
            ),
          ],
        ),
      ),
    ),
            ),

            Container(
      height: 40.h,
      width: 80.w,
      decoration: BoxDecoration(
        border: Border.all(
            width: 0.9,
            color: const Color.fromARGB(205, 81, 81, 81)
          ),
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15),
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
            
            Text(
              '₹12,345',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 14.sp),
            ),
            
            Text(
               "customer",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 10.sp),
            ),
          ],
        ),
      ),
    )
                 
                ],
              )
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;
  
  @override
  // TODO: implement maxExtent
  double get maxExtent =>  maxExent;
  
  @override
  // TODO: implement minExtent
  double get minExtent =>  minExent;
  
   
 

double progress(double shrinkOffset){
  return shrinkOffset / maxExtent;
}
  
}