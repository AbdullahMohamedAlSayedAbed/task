import 'package:flutter/material.dart';
import 'package:task/task_one/widgets/sign_up_view_body.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const SignUpViewBody(),
    );
  }
}
