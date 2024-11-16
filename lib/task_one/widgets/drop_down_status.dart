import 'package:flutter/material.dart';

class DropDownStatus extends StatelessWidget {
  const DropDownStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: 'Status',
        labelStyle: const TextStyle(
          fontSize: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          
      )),
      items: const [
      DropdownMenuItem(
        value: 1,
        child: Text('Single'),
      ),
      DropdownMenuItem(
        value: 2,
        child: Text('Married'),
      ),
      DropdownMenuItem(
        value: 3,
        child: Text('Divorced'),
      ),
    ], onChanged: (value) {
      
    },);
  }
}
