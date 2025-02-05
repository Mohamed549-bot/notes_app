import 'package:flutter/material.dart';
import 'package:my_new_project/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onsaved,
      this.onChanged});

  final String hint;
  final int maxLines;
  final void Function(String?)? onsaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
    borderSide: BorderSide(
      color: color ?? const Color.fromARGB(255, 255, 255, 255),
    ),
  );
}
