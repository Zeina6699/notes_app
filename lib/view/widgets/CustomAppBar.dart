import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/customIcon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.icon, required this.title});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,
          
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        customIcon(icon: icon,

        )
      ],
    );
  }
}
