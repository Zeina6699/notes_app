import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:NotesViewBody()
    );
  }
}
