import 'package:flutter/material.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({
    super.key,
  });

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Gender: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Radio(
          value: 'male',
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text(
          'Male',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 10),
        Radio(
          value: 'female',
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value!;
            });
          },
        ),
        const Text('Female', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
