import 'package:comfylux/const/color.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: MontserratCustomText(
                text: 'This is Catagories Screen',
                textColor: primaryColor,
                fontWeight: FontWeight.w700,fontsize: 22,),
          )
        ],
      ),
    );
  }
}
