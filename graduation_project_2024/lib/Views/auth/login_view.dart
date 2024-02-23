import 'package:flutter/material.dart';
import 'package:graduation_project_2024/Views/auth/widgets/dont_have_account_row.dart';
import 'package:graduation_project_2024/Views/auth/widgets/login_button.dart';

import 'widgets/login_header.dart';
import 'widgets/login_page_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginPageHeader(),
                  LoginPageForm(),
                  SizedBox(height: 50),
                  login_button(),
                  DontHaveAccountRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


