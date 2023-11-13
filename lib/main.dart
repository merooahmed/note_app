import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/add_note_cubit.dart';
import 'package:noteapp/cubits/simple_bloc_obeserver.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/notes_view.dart';

void main() async {
  
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserever();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
