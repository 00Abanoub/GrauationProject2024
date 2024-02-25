import 'package:flutter/material.dart';
import '../../Views/splashscreens/model/app_defaults.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefaults.padding * 2),
      child: Row(
        children: [
          Text(
            'Sign Up',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Login');
            },
            style: ElevatedButton.styleFrom(
              elevation: 1,
              backgroundColor: const Color(0xff04658e),
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
