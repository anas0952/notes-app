import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_view/constants.dart';
import 'package:notes_app_view/model/notes-model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NotesModel notesModel) async {
    emit(AddNotesLoading());
    try {
      var notesBox = await Hive.openBox<NotesModel>(kHivebox);
      notesBox.add(notesModel);
      emit(AddNotesSuccess());
    } catch (e) {
      // TODO
      emit(AddNotesFaliure(errMessage: e.toString()));
    }
  }
}
