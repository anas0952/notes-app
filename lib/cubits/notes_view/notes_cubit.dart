import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_view/model/notes-model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
