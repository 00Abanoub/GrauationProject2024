import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project_2024/Views/choose_City.dart';
import 'package:graduation_project_2024/Views/startView.dart';
import 'Views/login_or_signup_view.dart';
import 'Views/login_view.dart';
import 'Views/hobbiesView.dart';
import 'Views/sign_up_view.dart';
import 'Views/splashscreens/first_splash Screen.dart';
import 'widgets/forget_Password/forget_password_view.dart';
import 'widgets/forget_Password/number_verification_view.dart';
import 'widgets/forget_Password/password_reset_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const TripEase());
}

class TripEase extends StatelessWidget {
  const TripEase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: AppRoutes.onboarding,
      initialRoute: '//',
      //! learn the app the Views you contain
      routes: {
        '//': (context) => OnboardingPage(),
        '/': (context) => StartView(),
        '/Login_or_signup': (context) => LoginOrSignUpPage(),
        '/Login': (context) => LoginView(),
        '/SignUp': (context) => SignUpView(),
        '/forget_password':(context)=>ForgetPasswordView(),
        '/confirm_password':(context)=>NumberVerificationView(),
        '/new_password':(context)=>PasswordResetView(),
        '/CityView': (context) => CityView(),
        '/HobbiesView': (context) => HobbiesView(),
      },
      // home: StartView(),
    );
  }
}
