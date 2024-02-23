import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project_2024/Views/Signupme.dart';
import 'package:graduation_project_2024/Views/choose_City.dart';
import 'package:graduation_project_2024/Views/startView.dart';
import 'Views/auth/login_view.dart';
import 'Views/hobbiesView.dart';
import 'Views/auth/login_or_signup_page.dart';
import 'Views/splashscreens/first_splash Screen.dart';

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
        '//': (context) =>OnboardingPage(),
        '/': (context) => StartView(),
        //'/Login': (context) => LoginView(),
        '/Login': (context) => LoginPage(),
        '/SignUp': (context) => SignUpView(),
        '/CityView': (context) => CityView(),
        '/HobbiesView': (context) => HobbiesView(),
      },
     // home: StartView(),
    );
  }
}
