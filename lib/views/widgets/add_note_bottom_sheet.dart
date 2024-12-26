import 'package:flutter/material.dart';
import 'package:my_new_project/constants.dart';
import 'package:my_new_project/views/widgets/custom_button.dart';
import 'package:my_new_project/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
