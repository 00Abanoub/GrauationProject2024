import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../widgets/sign_up_form.dart';
import '../widgets/sign_up_page_header.dart';
import 'splashscreens/model/app_defaults.dart';



class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SignUpPageHeader(),
                SizedBox(height: AppDefaults.padding),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
