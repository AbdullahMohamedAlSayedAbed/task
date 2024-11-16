import 'package:flutter/material.dart';
import 'package:task/task_one/views/sing_up_view.dart';
import 'package:task/task_one/widgets/custom_text_form_field.dart';
import 'package:task/task_one/widgets/password_text_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset('images/image_logo.png'),
                  const Text(
                    'Your Company Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                      prefixIcon: const Icon(Icons.email),
                      hintText: 'Email',
                      onSaved: (value) {}),
                  const SizedBox(height: 20),
                  PasswordTextField(onSaved: (value) {}),
                  const SizedBox(height: 40),
                  CheckboxListTile(
                    title: const Text('Remember Me'),
                    value: isRemember,
                    onChanged: (value) {
                      setState(() {
                        isRemember = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      }
                    },
                    child: const Text('Sign In'),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SingUpView()));
                    },
                    child: const Text('Don\'t have an account? Sign Up'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
