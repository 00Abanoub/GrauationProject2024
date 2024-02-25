import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_icons.dart';


class AppBackButton extends StatelessWidget {
  /// Custom Back labelLarge with a custom ICON for this app
  const AppBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon:const Icon(Icons.arrow_back_ios_new,size: 25,),
      onPressed: () => Navigator.pop(context),
    );
  }
}
