import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_view/cubits/notes_view/notes_cubit.dart';
import 'package:notes_app_view/widgets/coustom-notesview.dart';
import 'package:notes_app_view/model/notes-model.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});
  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
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
                  notesModel: data[index],
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
