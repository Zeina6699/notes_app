import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/CustomAppBar.dart';
import 'package:notesapp/view/widgets/NotesListView.dart';
import 'package:notesapp/view/widgets/customNoteItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(children: [
          SizedBox(height: 5),
          customAppBar(),
          Expanded(child: NotesListView())
        ]));
  }
}


