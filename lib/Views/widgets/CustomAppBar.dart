import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/customIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        customIcon(
          icon: icon,
        )
      ],
    );
  }
}
