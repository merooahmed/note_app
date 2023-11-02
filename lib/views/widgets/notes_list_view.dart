import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_new_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return  const Padding(
        padding:  EdgeInsets.all(8.0),
        child: CustomNoteItem(),
      );
    });
  }
}