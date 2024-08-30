import 'package:comfylux/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatelessWidget {
  final FocusNode? focusNode;
  final int maxlines;
  final String? label;
  final contentPadding;
  final String hint;
  // final String preIcon;
  // final FocusNode inputFocus;
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  // final VoidCallback onComplete;
  final TextStyle hintStyle;
  final TextStyle inputTextStyle;
  final TextInputType keyboard;
  final Color? cursorColor;
  final bool readOnly;

  const InputField(
      {super.key,
      this.label,
      required this.hint,
      // required this.preIcon,
      // required this.inputFocus,
      // required this.onComplete,
      required this.keyboard,
      this.hintStyle =
          const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      this.inputTextStyle = const TextStyle(color: Colors.black),
      this.controller,
      this.cursorColor,
      this.validator,
      this.readOnly = false,
      this.contentPadding,
      this.maxlines = 1,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,

      maxLines: maxlines,
      readOnly: readOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboard,
      validator: validator,
      // focusNode: inputFocus,
      textInputAction: TextInputAction.next,
      // onEditingComplete: onComplete,
      style: inputTextStyle,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: whiteColor,
        hintText: hint,
        hintStyle: hintStyle,
        labelText: label,
        labelStyle: const TextStyle(color: primaryColor),
        // prefixIcon: Padding(
        //   padding: const EdgeInsets.all(15.0),
        //   child: SvgPicture.asset(preIcon),
        // ),
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: goldcolor, // Set the color when the TextField is focused
            // Set the color of the border
            width: 2.0, // Set the width of the border
          ),
          borderRadius:
              BorderRadius.circular(12), // Set the roundness of the border
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: goldcolor, // Set the color when the TextField is focused
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}


class PasswordField extends StatefulWidget {
  final String? label;
  final String hint;
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final TextInputType keyboard;
  final Color? cursorColor;
  final TextStyle? hintStyle;

  const PasswordField({
    super.key,
    this.label,
    required this.hint,
    required this.keyboard,
    this.controller,
    this.cursorColor,
    this.validator,
    this.hintStyle,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      obscureText: _isObscure,
      keyboardType: widget.keyboard,
      validator: widget.validator,
      cursorColor: widget.cursorColor,
      textInputAction: TextInputAction.done,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: whiteColor,
        hintText: widget.hint,
        hintStyle: widget.hintStyle,
        labelText: widget.label,
        labelStyle: const TextStyle(color: primaryColor),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
          child: Icon(
            _isObscure ? Icons.remove_red_eye_rounded : Icons.visibility_off,
            color: primaryColor,
          ),
        ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: goldcolor, // Set the color when the TextField is focused
            width: 2.0, // Set the width of the border
          ),
          borderRadius: BorderRadius.circular(12), // Set the roundness of the border
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: goldcolor, // Set the color when the TextField is focused
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}


