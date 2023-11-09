import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_texxt_field.dart';

class NoteModelbottomSheet extends StatelessWidget {
  const NoteModelbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            CustomTextField(
              hint: 'Content',
              maxline: 5,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
