import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/note_bottom_model.dart';
import 'package:noteapp/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context){
return NoteModelbottomSheet();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff2AC2D1),
      ),
      body: NotesViewBody(),
    );
  }
}
