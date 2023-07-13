import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/text_theme.dart';

class KTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffixIcon, prefixIcon;
  final String? hintText, errorText;
  final bool autofocus, enabled, expanded;
  final double? kWidth, height;
  final int? maxLines;
  final bool obscureText;
  final String? initVal;
  final TextStyle? style;
  final List<TextInputFormatter>? formatter;
  final void Function()? onTap;
  final Color? kFillColor;

  const KTextFormField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.hintText,
    this.onTap,
    this.errorText,
    this.keyboardType,
    this.onChanged,
    this.autofocus = false,
    this.prefixIcon,
    this.enabled = true,
    this.kWidth,
    this.height,
    this.maxLines,
    this.formatter,
    this.expanded = false,
    this.initVal,
    this.style, this.kFillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: formatter,
      keyboardAppearance: Theme.of(context).brightness,
      keyboardType: keyboardType,
      controller: controller,
      autofocus: autofocus,
      enabled: enabled,

      onTap: onTap,
      expands: expanded,
      initialValue: controller == null ? initVal : null,
      cursorColor: KColors.of(context).cursor,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      style: style ?? KTextStyle.of(context).body,
      maxLines: maxLines ?? (obscureText ? 1 : null),
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: kFillColor??KColors.of(context).textField,

        hintStyle: KTextStyle.of(context).hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        errorStyle: KTextStyle.of(context).error,
        errorText: errorText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        isDense: false,
      ),
    );
  }
}
