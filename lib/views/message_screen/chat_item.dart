import 'package:comfylux/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatItem extends StatelessWidget {

  final String itemName;
  final String lastMessage;
  final String lastMessageTime;

  const ChatItem(
    {
      Key? key,
      required this.itemName,
      required this.lastMessage,
      required this.lastMessageTime,
    }
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        debugPrint('Tapped');
      },
      leading: const CircleAvatar(
        backgroundColor: goldcolor,
        child: Icon(
          Icons.person,
          color: whiteColor,
        ),
      ),
      title: Text(
        itemName,
        style: GoogleFonts.montserrat(
          color: primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
      ),
      subtitle: Text(
        lastMessage,
        style: GoogleFonts.montserrat(
          color: lightColor,
          fontSize: 14.sp,
        ),
      ),
      trailing: Text(
        lastMessageTime,
        style: GoogleFonts.montserrat(
          color: lightColor,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
