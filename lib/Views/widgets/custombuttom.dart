import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap});
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: Text("Add",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
