// ignore_for_file: prefer_const_constructors, unused_import, implementation_imports, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class TextFiledWidget extends StatelessWidget {
  final String hinttext;
  final bool obscuretext;
  final int? maxlength;
  final String? counterText;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onchanged;

  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  IconData? icon;
  final String? initialValue;
  final Widget? suficesicon;
  TextFiledWidget({
    super.key,
    this.textInputType,
    required this.hinttext,
    this.icon,
    this.obscuretext = false,
    this.validator,
    this.onchanged,
    this.suficesicon,
    this.maxlength,
    this.initialValue,
    this.inputFormatters,
    this.focusNode,
    this.onFieldSubmitted,
    this.counterText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      //   onFieldSubmitted: ,
      // onEditingComplete: ()=>FocusScope.of(context).nextFocus(),
      //textInputAction: TextInputAction.newline,
      inputFormatters: inputFormatters,
      maxLength: maxlength,

      onFieldSubmitted: onFieldSubmitted,
      onChanged: onchanged,
      validator: validator,

      keyboardType: textInputType,
      decoration: InputDecoration(
          counterText: counterText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.black, width: 1.5)),
          filled: true,
          fillColor: Colors.white,
          hintText: hinttext,
          hintStyle: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black),
          suffixIcon: suficesicon,
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          )),
    );
  }
}
