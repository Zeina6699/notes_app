import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/Views/widgets/custombuttom.dart';
import 'package:notesapp/Views/widgets/customtextfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            customTextField(hint: "title"),
            SizedBox(
              height: 16,
            ),
            customTextField(
              hint: "content",
              maxlines: 5,
            ),
            SizedBox(
              height: 45,
            ),
            CustomButtom(),
           
          ],
        ),
      ),
    );
   
  }
}

