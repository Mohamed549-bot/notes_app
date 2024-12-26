import 'package:flutter/material.dart';
import 'package:my_new_project/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
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
