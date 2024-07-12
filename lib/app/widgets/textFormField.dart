import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFiled extends StatelessWidget {
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFormFiled(
      {super.key,
      this.controller,
      this.maxLines,
      this.keyboardType,
      this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: maxLines ?? 1,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field can't be blank";
        }
        return null;
      },
      decoration: InputDecoration(
          isDense: true,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF87898E)),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF87898E)),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF87898E)),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
