import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_view/cubits/notes_view/notes_cubit.dart';
import 'package:notes_app_view/widgets/notes_view_body/coustom-notesview.dart';
import 'package:notes_app_view/model/notes-model.dart';

class ListViewNotes extends StatefulWidget {
  const ListViewNotes({super.key});
  @override
  State<ListViewNotes> createState() => _ListViewNotesState();
}

class _ListViewNotesState extends State<ListViewNotes> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<NotesModel> data = [];
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesSuccess) {
          data = BlocProvider.of<NotesCubit>(context).listnotes;
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return CoustomNotesView(
                  notesModel:
                      BlocProvider.of<NotesCubit>(context).listnotes[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: data.length),
        );
      },
    );
  }
}
