import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_view/constants.dart';
import 'package:notes_app_view/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_view/model/notes-model.dart';
import 'package:notes_app_view/simple_bloc_observer.dart';
import 'package:notes_app_view/view/notes-view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox(kHivebox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        home: const NotesAppView(),
      ),
    );
  }
}
