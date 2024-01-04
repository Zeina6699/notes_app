import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxlines = 1, this.onSaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        maxLines: maxlines,
        cursorColor: primaryColor, //مؤشر الكتابة
        decoration: InputDecoration(
            border: o(),
            enabledBorder: o(),
            focusedBorder: o(primaryColor),
            hintText: hint,
            hintStyle: const TextStyle(color: primaryColor)));
  }
}

OutlineInputBorder o([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white));
}
