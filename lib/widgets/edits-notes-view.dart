import 'package:flutter/material.dart';
import 'package:notes_app_view/model/notes-model.dart';
import 'package:notes_app_view/view/notes-view.dart';
import 'package:notes_app_view/widgets/cousstome-textfailed.dart';
import 'package:notes_app_view/widgets/coustom-button.dart';
import 'package:notes_app_view/widgets/coustom-appbar.dart';
import 'package:notes_app_view/widgets/items_color.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({
    super.key,
    required this.notesModel,
  });
  final NotesModel notesModel;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        CoustomAppBar(
          title: 'Edits Notes ',
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        const SizedBox(
          height: 22,
        ),
        CoustomTextField(
          hint: 'Title',
          initialValue: widget.notesModel.title,
          onChanged: (val) {
            title = val;
          },
        ),
        CoustomTextField(
          hint: 'Content',
          initialValue: widget.notesModel.content,
          maxLines: 4,
          onChanged: (val) {
            subTitle = val;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        const ListItemsColors(),
        const SizedBox(
          height: 20,
        ),
        CoustomButton(
          text: 'Edit Notes',
          onTap: () {
            widget.notesModel.title = title ?? widget.notesModel.title;
            widget.notesModel.content = subTitle ?? widget.notesModel.content;
            widget.notesModel.save();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const NotesAppView()),
                (route) => false);
          },
        )
      ]),
    );
  }
}
