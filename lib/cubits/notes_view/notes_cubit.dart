import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_view/constants.dart';
import 'package:notes_app_view/model/notes-model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel> listnotes = [];

  getData() async {
    try {
      Box<NotesModel> box = await Hive.openBox<NotesModel>(kHivebox);
      listnotes = box.values.toList();
      emit(NotesSuccess(data: listnotes));
    } catch (e) {
      // TODO
      emit(NotesFaliure(msgerre: e.toString()));
    }
  }
}
