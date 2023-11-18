import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/add_note_state.dart';
import 'package:noteapp/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(IntialNoteState());
  addNote(NoteModel note) async {
    emit(LoadingNoteState());
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
     
       await NotesBox.add(note); 
       emit(SuccessNoteState());
    } catch (e) {
      emit(FailureNoteState(erroMsg: e.toString()));
    }
  }
}
