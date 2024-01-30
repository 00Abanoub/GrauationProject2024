import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project_2024/Views/Signup.dart';
import 'package:graduation_project_2024/Views/login_View.dart';
import 'package:graduation_project_2024/Views/startView.dart';

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
      initialRoute: '/',
      //! learn the app the Views you contain
      routes: {
        '/':(context) =>  StartView(),
        '/Login':(context) => LoginView(),
        '/SignUp':(context) => SignUpView(),
      },
      //home:StartView() ,
    );
  }
}

      // appBar: AppBar(
      //   backgroundColor: Colors.amber[600],
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'Flutter application',
      //     style: TextStyle(
      //       fontSize: 25,
      //     ),
      //   ),
      // ),