import 'package:flutter/material.dart';

import '../Views/splashscreens/model/app_defaults.dart';


class SignUpPageHeader extends StatelessWidget {
  const SignUpPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Text(
          'Welcome to our\ngrocery shop',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
