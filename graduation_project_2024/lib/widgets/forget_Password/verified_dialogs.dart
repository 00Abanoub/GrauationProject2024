import 'package:flutter/material.dart';

import '../../Views/splashscreens/model/app_defaults.dart';

class VerifiedDialog extends StatelessWidget {
  const VerifiedDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xff04658E),
      shape: RoundedRectangleBorder(borderRadius: AppDefaults.borderRadius),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDefaults.padding * 3,
          horizontal: AppDefaults.padding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Color(0xff04658E), 
                    BlendMode.darken,
                  ),
                  child: Image.asset('assets/images/postcard.gif'),
                ),
              ),
            ),
            const SizedBox(height: AppDefaults.padding),
            Text(
              'Verified!',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold,color: Colors.white,),
            ),
            const SizedBox(height: AppDefaults.padding),
            const Text(
              'Hurrah!!  You have successfully\nverified the account.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppDefaults.padding),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/new_password'),
                child: const Text(
                  'Create new password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
