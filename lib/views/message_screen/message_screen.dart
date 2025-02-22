// ignore_for_file: deprecated_member_use

import 'package:comfylux/const/color.dart';
import 'package:comfylux/views/message_screen/chat_item.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:comfylux/widgets/gradient_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Map<String, Map<String, String>> chatList = {
  "Doe John": {"last_message": "Hey", "last_message_time": "9:03 PM"},
  "Mary Peter": {"last_message": "Cool fr", "last_message_time": "12:00 PM"},
  "John Smith": {
    "last_message": "Can we order this?",
    "last_message_time": "8:00 PM"
  },
  "Cool Guy": {
    "last_message": "Is this available?",
    "last_message_time": "7:05 PM"
  },
  "Another Cool Guy": {"last_message": "Ok", "last_message_time": "12:45 PM"},
};

List<String> getChatRecipents() {
  return chatList.keys.toList();
}

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> _filteredChatRecipents = [];

  @override
  void initState() {
    super.initState();
    _filteredChatRecipents = getChatRecipents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          SizedBox(
            width: 366.w,
            height: 50.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: TextField(
                controller: _controller,
                onChanged: (val) {
                  setState(() {
                    _filteredChatRecipents = getChatRecipents();
                    _filteredChatRecipents.retainWhere((element) =>
                        element.toLowerCase().contains(val.toLowerCase()));
                  });
                },
                style: GoogleFonts.montserratAlternates(
                    textStyle: TextStyle(
                        color: whiteColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w200)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: whiteColor,
                    size: 26,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: goldcolor,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.montserratAlternates(
                      textStyle: TextStyle(
                          color: whiteColor.withOpacity(0.6),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          const GradientDivider(),
          Expanded(
            child: ListView.separated(
              itemCount: _filteredChatRecipents.length,
              separatorBuilder: (context, index) => const GradientDivider(),
              itemBuilder: (context, index) {
                return ChatItem(
                  itemName: _filteredChatRecipents[index].toString(),
                  lastMessage: chatList[_filteredChatRecipents[index]]!['last_message'].toString(),
                  lastMessageTime: chatList[_filteredChatRecipents[index]]!['last_message_time'].toString(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
