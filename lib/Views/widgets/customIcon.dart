import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class customIcon extends StatelessWidget {
  const customIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(16)),
        height: 47,
        width: 47,
        child: Center(
          child: Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
   
  }
}
