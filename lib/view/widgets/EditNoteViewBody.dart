import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/CustomAppBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            
                SizedBox(height: 10),
              customAppBar(title: "Edit Notes",icon:Icons.check ,)],
        ));
  }
}
