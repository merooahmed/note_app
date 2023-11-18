import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
          padding: EdgeInsets.only(top: 50, bottom: 50, left: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffFFCD7A)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  notes.title,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                subtitle: Text(
                  notes.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.2), fontSize: 24),
                ),
                trailing: Icon(
                  FontAwesomeIcons.trash,
                  size: 32,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  notes.date,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )),
    );
  }
}
