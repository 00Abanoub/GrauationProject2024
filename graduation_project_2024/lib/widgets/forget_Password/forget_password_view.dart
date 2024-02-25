import 'package:flutter/material.dart';

import '../../Views/splashscreens/model/app_defaults.dart';
import '../../constants/app_colors.dart';
import 'app_back_button.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEFEFEF),
        appBar: AppBar(
          leading: const AppBackButton(),
          title: const Text('Forget Password'),
          backgroundColor: AppColors.scaffoldBackground,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(AppDefaults.margin),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDefaults.padding,
                    vertical: AppDefaults.padding * 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: AppDefaults.borderRadius,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Reset your password',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: AppDefaults.padding),
                      Text(
                        'Please enter your number. We will send a code\nto your phone to reset your password.',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: AppDefaults.padding * 3),
                      const Text(
                        "Phone Number",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: AppDefaults.padding),
                      const SizedBox(height: AppDefaults.padding),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/confirm_password');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: const Color(0xff08638f),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Text(
                              "Confirm",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
