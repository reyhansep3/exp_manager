
import 'package:exp_manager/core/utils/app_color.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomForm extends StatefulWidget {
  final Key? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function()? onTap;
  final bool readOnly;
  final TextEditingController controller;
  final bool obscureText;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final double? borderRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final Color? focusedBorderColor;
  final int? errorMaxLines;
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  
  const CustomForm({
    super.key, 
    this.formKey, 
    this.autovalidateMode,
    this.onTap,
    this.readOnly = false, 
    required this.controller, 
    this.obscureText = false,
    this.maxLength,
    this.minLines = 1,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.borderRadius, 
    this.topLeftRadius, 
    this.topRightRadius, 
    this.bottomLeftRadius, 
    this.bottomRightRadius, 
    this.focusedBorderColor, 
    this.errorMaxLines,
    this.focusNode, 
    this.onSaved
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm > {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: widget.autovalidateMode,
      child: TextFormField(
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        enableSuggestions: false,
        controller: widget.controller,
        obscureText: widget.obscureText,
        maxLength: widget.maxLength,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        focusNode: widget.focusNode,
        validator: widget.validator,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        keyboardType: widget.keyboardType,
        textAlign: widget.textAlign,
        decoration: InputDecoration(
          hintText: widget.hint,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          errorMaxLines: widget.errorMaxLines ?? 3,
          counterText: '',
          hintStyle: AppFontStyle.mediumText
              .copyWith(color: AppColor.contextGrey),
          fillColor: widget.fillColor,
          filled: widget.fillColor != null
              ? true
              : false,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.topLeftRadius ?? widget.borderRadius ?? 8),
              topRight: Radius.circular(widget.topRightRadius ?? widget.borderRadius ?? 8),
              bottomLeft: Radius.circular(widget.bottomLeftRadius ?? widget.borderRadius ?? 8),
              bottomRight: Radius.circular(widget.bottomRightRadius ?? widget.borderRadius ?? 8)
            ),
            borderSide: const BorderSide(
              color: Color(0xFFBDBDBD),
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.topLeftRadius ?? widget.borderRadius ?? 8),
              topRight: Radius.circular(widget.topRightRadius ?? widget.borderRadius ?? 8),
              bottomLeft: Radius.circular(widget.bottomLeftRadius ?? widget.borderRadius ?? 8),
              bottomRight: Radius.circular(widget.bottomRightRadius ?? widget.borderRadius ?? 8)
            ),
            borderSide: BorderSide(
              color: widget.focusedBorderColor ?? Colors.black
            )
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.topLeftRadius ?? widget.borderRadius ?? 8),
              topRight: Radius.circular(widget.topRightRadius ?? widget.borderRadius ?? 8),
              bottomLeft: Radius.circular(widget.bottomLeftRadius ?? widget.borderRadius ?? 8),
              bottomRight: Radius.circular(widget.bottomRightRadius ?? widget.borderRadius ?? 8)
            ),
            borderSide: const BorderSide(
              color: Colors.red
            )
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.topLeftRadius ?? widget.borderRadius ?? 8),
              topRight: Radius.circular(widget.topRightRadius ?? widget.borderRadius ?? 8),
              bottomLeft: Radius.circular(widget.bottomLeftRadius ?? widget.borderRadius ?? 8),
              bottomRight: Radius.circular(widget.bottomRightRadius ?? widget.borderRadius ?? 8)
            ),
            borderSide: const BorderSide(
              color: Colors.red
            )
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.topLeftRadius ?? widget.borderRadius ?? 8),
              topRight: Radius.circular(widget.topRightRadius ?? widget.borderRadius ?? 8),
              bottomLeft: Radius.circular(widget.bottomLeftRadius ?? widget.borderRadius ?? 8),
              bottomRight: Radius.circular(widget.bottomRightRadius ?? widget.borderRadius ?? 8)
            ),
            borderSide: const BorderSide(
              color: Color(0xFFBDBDBD),
            )
          ),
          contentPadding: const EdgeInsets.all(16)
        )
      )
    ); 
  }
}

class CustomFormWithUnderline extends StatefulWidget {
  final Key? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function()? onTap;
  final bool readOnly;
  final TextEditingController controller;
  final bool obscureText;
  final int? maxLength;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? focusedBorderColor;
  
  const CustomFormWithUnderline({
    super.key, 
    this.formKey, 
    this.autovalidateMode,
    this.onTap,
    this.readOnly = false, 
    required this.controller, 
    this.obscureText = false,
    this.maxLength,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.focusedBorderColor
  });

  @override
  State<CustomFormWithUnderline> createState() => _CustomFormWithUnderlineState();
}

class _CustomFormWithUnderlineState extends State<CustomFormWithUnderline> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: widget.autovalidateMode,
      child: TextFormField(
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        controller: widget.controller,
        obscureText: widget.obscureText,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        validator: widget.validator,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        onFieldSubmitted: widget.onFieldSubmitted,
        keyboardType: widget.keyboardType,
        textAlign: widget.textAlign,
        decoration: InputDecoration(
          hintText: widget.hint,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          counterText: '',
          fillColor: widget.fillColor,
          filled: widget.fillColor != null
              ? true
              : false,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.contextGrey,
            )
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.focusedBorderColor ?? Colors.black
            )
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFBDBDBD),
            )
          ),
          errorMaxLines: 3
        )
      )
    );
  }
}