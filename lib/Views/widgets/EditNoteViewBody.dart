import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/CustomAppBar.dart';
import 'package:notesapp/Views/widgets/customtextfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hint: "title"),
            SizedBox(
              height: 20,
            ),
            CustomTextField(hint: "Content", maxlines: 5)
          ],
        ));
  }
}
