import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {Key? key,
      this.alignment,
      this.width,
      this.focusNode,
      this.icon,
      this.autofocus = false,
      this.textStyle,
      this.items,
      this.hintText,
      this.hintStyle,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.contentPadding,
      this.borderDecoration,
      this.fillColor,
      this.filled = true,
      this.validator,
      this.onChanged})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final FocusNode? focusNode;

  final Widget? icon;

  final bool? autofocus;

  final TextStyle? textStyle;

  final List<String>? items;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center, child: dropDownWidget)
        : dropDownWidget;
  }

  Widget get dropDownWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: DropdownButtonFormField(
          focusNode: focusNode,
          icon: icon,
          autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          items: items?.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ?? theme.textTheme.bodyLarge,
              ),
            );
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: (value) {
            onChanged!(value.toString());
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding:
            contentPadding ?? EdgeInsets.fromLTRB(11.h, 12.v, 11.h, 11.v),
        fillColor:
            fillColor ?? theme.colorScheme.onPrimaryContainer.withOpacity(1),
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.h),
              borderSide: BorderSide(
                color: theme.colorScheme.primaryContainer,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.h),
              borderSide: BorderSide(
                color: theme.colorScheme.primaryContainer,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.h),
              borderSide: BorderSide(
                color: theme.colorScheme.primaryContainer,
                width: 1,
              ),
            ),
      );
}
