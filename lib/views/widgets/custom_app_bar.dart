import 'package:flutter/material.dart';
import 'package:my_new_project/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Note App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
        ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
