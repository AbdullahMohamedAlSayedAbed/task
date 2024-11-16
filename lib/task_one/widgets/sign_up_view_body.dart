import 'package:flutter/material.dart';
import 'package:task/task_one/widgets/age_slider_widget.dart';
import 'package:task/task_one/widgets/custom_text_form_field.dart';
import 'package:task/task_one/widgets/drop_down_status.dart';
import 'package:task/task_one/widgets/gender_widget.dart';
import 'package:task/task_one/widgets/note_form_field_widget.dart';
import 'package:task/task_one/widgets/notifications_switch_widget.dart';
import 'package:task/task_one/widgets/password_text_field.dart';
import 'package:task/task_one/widgets/terms_and_con_ditions_check_box_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                const SizedBox(height: 20),
                const GenderWidget(),
                const SizedBox(height: 20),
                const DropDownStatus(),
                const SizedBox(height: 20),
                const AgeSliderWidget(),
                const SizedBox(height: 20),
                const NotificationsSwitchWidget(),
                const SizedBox(height: 20),
                const TermsAndConDitionsCheckBoxWidget(),
                const SizedBox(height: 20),
                const NoteFormFieldWidget(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  },
                  child: const Text('Submit'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('You have an account? Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
