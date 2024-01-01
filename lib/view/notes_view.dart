import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/NotesViewBody.dart';
import 'package:notesapp/view/widgets/addnoteBottomSheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          child: Icon(Icons.add),
        ),
        body: const NotesViewBody());
  }
}
