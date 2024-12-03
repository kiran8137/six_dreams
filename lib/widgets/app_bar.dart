

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:six_dreams_machine_task/screens/profile_screen/profile_screen.dart';
import 'package:six_dreams_machine_task/widgets/myprofile_text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth < 400 ? 50 : 55,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10)
      ),
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset("assets/profile.png"),
                 SizedBox(width: 5),
          Text("John Deo",
          style: GoogleFonts.poppins(),
          )
              ],
            ),
       
            
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=> const ProfileScreen()));
            },
            child: MyProfileTextWidget(profileName: 'My Profile', fontWeight: FontWeight.w500),
          )
        ],
       ),
     ),
      
    );
  }
}



//app bar in profile screen
AppBar appBarProfileScreen(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios)),
      title:
          const MyProfileTextWidget(profileName: "My Profile", fontSize: 16),
    );
  }
  

