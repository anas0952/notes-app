import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_view/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_view/widgets/notes_view_addnotes.dart/addnotebottomshet.dart';

class NoteBottomShet extends StatelessWidget {
  const NoteBottomShet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {}
          if (state is AddNotesFaliure) {
            print('failed ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: const AddNotesBottomShet());
        },
      ),
    );
  }
}
