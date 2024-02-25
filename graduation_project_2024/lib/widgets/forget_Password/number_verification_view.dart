import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project_2024/widgets/forget_Password/verified_dialogs.dart';

import '../../Views/splashscreens/model/app_defaults.dart';
import '../../constants/app_colors.dart';
import '../../themes/app_themes.dart';

class NumberVerificationView extends StatelessWidget {
  const NumberVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  margin: const EdgeInsets.all(AppDefaults.margin),
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldBackground,
                    borderRadius: AppDefaults.borderRadius,
                  ),
                  child: const Column(
                    children: [
                      NumberVerificationHeader(),
                      OTPTextFields(),
                      SizedBox(height: AppDefaults.padding * 3),
                      ResendButton(),
                      SizedBox(height: AppDefaults.padding),
                      VerifyButton(),
                      SizedBox(height: AppDefaults.padding),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff04658E),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(8), // Adjust the radius value as needed
          ),
        ),
        onPressed: () {
          showGeneralDialog(
            barrierLabel: 'Dialog',
            barrierDismissible: true,
            context: context,
            pageBuilder: (ctx, anim1, anim2) => const VerifiedDialog(),
            transitionBuilder: (ctx, anim1, anim2, child) => ScaleTransition(
              scale: anim1,
              child: child,
            ),
          );
        },
        child: const Text(
          'Verify',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class ResendButton extends StatelessWidget {
  const ResendButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Did you don\'t get code?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 8,),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/confirm_password');
          },
          child: const Text(
            'Resend',
            style: TextStyle(
              color: Color(0xFF00AD48),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class NumberVerificationHeader extends StatelessWidget {
  const NumberVerificationHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppDefaults.padding),
        Text(
          'Entry Your 4 digit code',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: AppDefaults.padding),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xffffffff), // Set the desired background color here
                BlendMode.darken,
              ),
              child: Image.asset('assets/images/password2.gif'),
            ),
          ),
        ),
        const SizedBox(height: AppDefaults.padding * 3),
      ],
    );
  }
}

class OTPTextFields extends StatelessWidget {
  const OTPTextFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.defaultTheme.copyWith(
        inputDecorationTheme: AppTheme.otpInputDecorationTheme,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 68,
            height: 68,
            child: TextFormField(
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else {
                  FocusScope.of(context).previousFocus();
                }
              },
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
