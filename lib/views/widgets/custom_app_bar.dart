import 'package:flutter/material.dart';
import 'package:my_new_project/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.titile, required this.icon, this.onpressed});
  final String titile;
  final IconData icon;
  final void Function()? onpressed;

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
        CustomIcon(
          onpressed: onpressed,
          icon: icon,
        ),
      ],
    );
  }
}
