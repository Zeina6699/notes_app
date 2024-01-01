import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/CustomAppBar.dart';
import 'package:notesapp/view/widgets/customtextfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            SizedBox(height: 10),
            customAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(height: 50,),
            customTextField(hint: "title"),
              SizedBox(height: 20,),

            customTextField(hint: "Content",maxlines: 5)
          ],
        ));
  }
}
