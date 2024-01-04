import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/customNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      return  const Padding(
        padding:  EdgeInsets.symmetric(vertical:6),
        child: NoteItem(),
      );
    });
  }
}
