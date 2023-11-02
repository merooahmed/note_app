import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 50, bottom: 50, left: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffFFCD7A)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              subtitle: Text(
                'Build your career with thrawat samy',
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
                'May21,2023',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ));
  }
}
