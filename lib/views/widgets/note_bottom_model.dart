import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_texxt_field.dart';

class NoteModelbottomSheet extends StatelessWidget {
  const NoteModelbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        CustomTextField(),
      ],
    );
  }
}
