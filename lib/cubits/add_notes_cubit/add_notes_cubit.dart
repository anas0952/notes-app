import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_view/constants.dart';
import 'package:notes_app_view/model/notes-model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color = const Color(0xff820933);

  addNote(NotesModel notesModel) async {
    notesModel.color = color.value;

    emit(AddNotesLoading());
    Box<NotesModel> notesBox = Hive.box<NotesModel>(kHivebox);
    notesBox.add(notesModel);
    emit(AddNotesSuccess());
  }
}
