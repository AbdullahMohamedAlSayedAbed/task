import 'package:flutter/material.dart';

class NoteFormFieldWidget extends StatelessWidget {
  const NoteFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Notes',
        hintStyle: const TextStyle(
          fontSize: 20,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
