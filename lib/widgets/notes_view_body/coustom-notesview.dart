import 'package:awesome_icons/awesome_icons.dart';
import 'package:notes_app_view/model/notes-model.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_view/view/notes-edit.dart';

class CoustomNotesView extends StatelessWidget {
  const CoustomNotesView({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const NotesEditApp();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(notesModel.color),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notesModel.title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  notesModel.content,
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    notesModel.delete();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                notesModel.date,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
