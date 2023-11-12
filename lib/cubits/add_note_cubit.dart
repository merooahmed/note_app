import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
 AddNoteCubit() : super(IntialNoteState());
}

