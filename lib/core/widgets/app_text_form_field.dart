import 'package:doctot_app/core/theming/colors.dart';
import 'package:doctot_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? foucedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.foucedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.hintStyle,
    this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        isDense: true,
        fillColor: backgroundColor ?? ColorsManager.moreLightGrey,
        filled: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder:
            foucedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
            ),
      ),
    );
  }
}
