import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class showDeleteDialog extends StatelessWidget {
  const showDeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text("Warning !",style: TextStyle(color: primaryColor),), //يقبلان اي ويدجت وليس فقط تيست
        content: Text("Do You Want to Delete this note?"),
        actions: [
          TextButton(
              onPressed: () {
                print("ok");
              },
              child: Text("ok",style: TextStyle(color: primaryColor),)),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("cancel",style: TextStyle(color: primaryColor),))
        ],
       );
  }
}