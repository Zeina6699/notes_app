import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/CustomAppBar.dart';
import 'package:notesapp/Views/widgets/NotesListView.dart';
import 'package:notesapp/Views/widgets/customNoteItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const  EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: const Column(children: [
          SizedBox(height: 5),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: NotesListView())
        ]));
  }
}