import 'package:flutter/material.dart';


import '../data/onboarding_model.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final OnboardingModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              data.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                data.headline,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data.description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
