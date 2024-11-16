import 'package:flutter/material.dart';
import 'package:task/task_one/views/sign_in_view.dart';

void main() {
  runApp(const Tasks());
}

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInView(),
    );
  }
}
