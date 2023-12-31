import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_alt/modal_progress_hud_alt.dart';
import 'package:noteapp/cubits/add_note_cubit.dart';
import 'package:noteapp/cubits/add_note_state.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/views/widgets/add_note_form.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_texxt_field.dart';

class NoteModelbottomSheet extends StatelessWidget {
  const NoteModelbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is FailureNoteState) {
            print(state.erroMsg);
          }
          if (state is SuccessNoteState) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is LoadingNoteState ? true : false,
            child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(child: AddNoteForm())),
          );
        },
      ),
    );
  }
}
