import 'package:flutter/material.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/cousstome-textfailed.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/coustom-button.dart';

class AddNotesBottomShet extends StatefulWidget {
  const AddNotesBottomShet({super.key});

  @override
  State<AddNotesBottomShet> createState() => _AddNotesBottomShetState();
}

class _AddNotesBottomShetState extends State<AddNotesBottomShet> {
  String? title, subTitle;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        width: double.infinity,
        height: 400,
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              //textFailed Create
              CoustomTextField(
                hint: 'Title',
                onSaved: (data) {
                  title = data;
                },
              ),

              CoustomTextField(
                onSaved: (data) {
                  title = data;
                },
                hint: 'Content',
                maxLines: 4,
              ),
              const SizedBox(
                height: 60,
              ),
              CoustomButton(
                text: 'Add Notes',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // BlocProvider.of<AddNotesCubit>(context).addNote(notesModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
