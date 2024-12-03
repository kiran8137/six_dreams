import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



//from to container 

class FromToContainer extends StatelessWidget {
  const FromToContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      //screenWidth < 350 && screenHeight < 600 ? 45 : 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            width: 0.9,
            color: const Color.fromARGB(205, 81, 81, 81)
          )
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            const FromContainer(),
              SizedBox(width: 5.w,),
            const ToContainer()
          ],
        ),
      ),
    );
  }
}







//To container widget which is part of the from and to container
class ToContainer extends StatelessWidget {
  const ToContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
         
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("To", style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 142, 142, 142)
            )),
            Container(
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.secondary,
                
              ),
              child: const Center(
                child: Icon(Icons.search)
                )
            )
          ],
        ),
      ),
    );
  }
}


//from container widget  which is part of the from and to container
class FromContainer extends StatelessWidget {
  const FromContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("From", style: GoogleFonts.poppins(
            color: const Color.fromARGB(255, 142, 142, 142),
            fontWeight: FontWeight.w500
          )),
            Text("|",style: TextStyle(fontSize: 25.sp,color: const Color.fromARGB(255, 142, 142, 142)),)
        ],
      ),
    );
  }
}



