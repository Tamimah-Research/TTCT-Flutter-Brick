import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
class {{#pascalCase}}{{project_name}}{{/pascalCase}}TextField extends StatelessWidget {

  ///
  const {{#pascalCase}}{{project_name}}{{/pascalCase}}TextField(
      {super.key,
        // required this.context,
        required this.controller,
        this.prefixIcon,
        this.suffixIcon,
        required this.hintText,
        this.textStyle,
        this.labelStyle,
        this.onTap,
        this.readOnly = false,
        this.autoValidateMode,
        this.focusNode,
        this.autoFocus,
        this.textInputType,
        this.validator,
        this.onSaved,
        this.onChanged,
        this.obscureText = false,
        this.maxLength,
        this.maxLines = 1,
        this.minLines,
        this.left = 5.0,
        this.right = 5.0,
        this.top = 0.0,
        this.bottom = 5.0,
        this.textInputAction,
        this.filled = true,
        this.isBorder = true,
        this.isEnabled = true,
        this.fillColor = Colors.white,
        this.borderColor = Colors.black,
        this.onEnterKeyPress,
        this.onEditingComplete,
        this.inputFormatter,});
  
  ///
  final TextEditingController controller;
  ///
  final String hintText;
  ///
  final Widget? prefixIcon;
  ///
  final Widget? suffixIcon;
  ///
  final TextStyle? textStyle;
  ///
  final TextStyle? labelStyle;
  ///
  final void Function()? onTap;
  ///
  final void Function(String?)? onSaved;
  ///
  final void Function(String)? onChanged;
  ///
  final bool? readOnly;
  ///
  final bool? autoFocus;
  ///
  final bool? obscureText;
  ///
  final AutovalidateMode? autoValidateMode;
  ///
  final FocusNode? focusNode;
  ///
  final TextInputType? textInputType;
  ///
  final String? Function(String?)? validator;
  ///
  final int? maxLength;
  ///
  final int? maxLines;
  ///
  final int? minLines;
  ///
  final double left;
  ///
  final double right;
  ///
  final double top;
  ///
  final double bottom;
  ///
  final TextInputAction? textInputAction;
  ///
  final bool? filled;
  ///
  final bool isBorder;
  ///
  final bool isEnabled;
  ///
  final Color? fillColor;
  ///
  final Color? borderColor;
  ///
  final Function(String?)? onEnterKeyPress;
  ///
  final Function()? onEditingComplete;
  ///
  final List<TextInputFormatter>? inputFormatter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right,
          top: top, bottom: bottom,),
      child: TextFormField(
          enabled: isEnabled,
          controller: controller,
          keyboardType: textInputType,
          autovalidateMode: autoValidateMode,
          textInputAction: textInputAction,
          obscureText: obscureText ?? false,
          onTap: onTap,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
          onChanged: onChanged,
          onSaved: onSaved,
          validator: validator,
          focusNode: focusNode,
          autofocus: autoFocus ?? false,
          readOnly: readOnly ?? false,
          inputFormatters: inputFormatter,
          style: textStyle,
          onFieldSubmitted: onEnterKeyPress,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
            labelText: hintText,
            labelStyle: labelStyle,
            contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            filled: filled,
            fillColor: fillColor,
            iconColor: Colors.blue,
            suffixIconColor: Colors.blue,
            focusColor: Colors.black,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            counterText: '',
            hintStyle: isEnabled ? textStyle : const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white,),
            // enabledBorder: OutlineInputBorder(
            //   borderSide: const BorderSide(color: black),
            //   borderRadius: BorderRadius.circular(10),
            // ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.blue.withOpacity(0.5),
                ),),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(.2),
                ),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),),
    );
  }
}
