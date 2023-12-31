import 'package:flutter/material.dart';
import 'package:notesapp/Views/editNoteView.dart';
import 'package:notesapp/Views/widgets/showDeleteDialog.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (Context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 17, top: 17, bottom: 17),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 10),
                  child: Text("Build your career with zeina",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5), fontSize: 20)),
                ),
                trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return  const showDeleteDialog();
                          });
                    })),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text("June24 , 2001",
                  style: TextStyle(color: Colors.black.withOpacity(.4))),
            )
          ],
        ),
      ),
    );
  }
}
