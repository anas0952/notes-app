import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_view/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_view/cubits/notes_view/notes_cubit.dart';
import 'package:notes_app_view/widgets/add_notebottomshet.dart';

class NoteBottomShet extends StatelessWidget {
  const NoteBottomShet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            BlocProvider.of<NotesCubit>(context).getData();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Title(
                    color: Colors.black,
                    child: const Text('Add To Notes Success'))));
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: const AddNotesBottomShet(),
          );
        },
      ),
    );
  }
}
