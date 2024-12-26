import 'package:flutter/material.dart';
import 'package:my_new_project/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titile, required this.icon});
  final String titile;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titile,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
