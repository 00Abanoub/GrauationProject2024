import 'package:flutter/material.dart';
import 'package:graduation_project_2024/utils/validators.dart';

import '../../themes/app_themes.dart';

class LoginPageForm extends StatefulWidget {
  const LoginPageForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPageForm> createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  final _key = GlobalKey<FormState>();

  bool isPasswordShown = false;
  onPassShowClicked() {
    isPasswordShown = !isPasswordShown;
    setState(() {});
  }

  onLogin() {
    final bool isFormOkay = _key.currentState?.validate() ?? false;
    if (isFormOkay) {
      Navigator.pushNamed(context, '');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.defaultTheme.copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone Field
              const Text(
                "Phone Number",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8),

              TextFormField(
                keyboardType: TextInputType.number,
                validator: Validators.requiredWithFieldName('Phone'),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  filled: true,
                  //fillColor: Colors.grey[300],
                  fillColor: const Color.fromARGB(255, 207, 209, 222),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password Field
              const Text(
                "Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8),

              TextFormField(
                validator: Validators.password,
                onFieldSubmitted: (v) => onLogin(),
                textInputAction: TextInputAction.done,
                obscureText: !isPasswordShown,
                decoration: InputDecoration(
                  filled: true,
                  //fillColor: Colors.grey[200],
                  fillColor: const Color.fromARGB(255, 207, 209, 222),

                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  //remove the line under the password when write it
                  //border: InputBorder.none,
                  //chatgpt
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: onPassShowClicked,
                      icon: Icon(
                        isPasswordShown
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),

              //* Forget Password labelLarge
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forget_password');
                  },
                  child: const Text('Forget Password?'),
                ),
              ),

              // Login labelLarge
              //LoginButton(onPressed: onLogin),
            ],
          ),
        ),
      ),
    );
  }
}
