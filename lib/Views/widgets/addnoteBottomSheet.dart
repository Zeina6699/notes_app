import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/Views/widgets/custombuttom.dart';
import 'package:notesapp/Views/widgets/customtextfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          customTextField(
              onSaved: (value) {
                title = value;
              },
              hint: "title"),
          SizedBox(
            height: 16,
          ),
          customTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "content",
            maxlines: 5,
          ),
          SizedBox(
            height: 45,
          ),
          CustomButtom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
