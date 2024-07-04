import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

typedef Validator = String? Function(String?);

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.focusBorder,
    this.contentPadding,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.hint,
  });

  final InputBorder? focusBorder;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String? hint;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Validator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: hint,
        errorStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 8.h,
            ),
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.grayLight,
              ),
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.grayLight,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(
                16.r,
              ),
            ),
        hintStyle: hintStyle ??
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: ColorsManager.grayLight,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: EdgeInsets.only(
                    right:
                        30.0.w), // Adjust the padding to make the icon smaller
                child: suffixIcon,
              )
            : null,
        fillColor: backgroundColor ?? Colors.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 19.sp,
        color: ColorsManager.grayLight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
