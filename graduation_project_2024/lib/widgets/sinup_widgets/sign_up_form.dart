import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project_2024/Views/splashscreens/model/app_defaults.dart';
import 'package:graduation_project_2024/utils/validators.dart';
import 'sign_up_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}
//!required do validation to this page
class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        //?want to change
        boxShadow: AppDefaults.boxShadow,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Name",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 8),

          TextFormField(
            validator: Validators.requiredWithFieldName('Name'),
            textInputAction: TextInputAction.next,
          ),

          const SizedBox(height: 15),

          const Text(
            "Phone Number",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            textInputAction: TextInputAction.next,
            validator: Validators.required,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: 10),
          const Text(
            "Password",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.required,
            textInputAction: TextInputAction.next,
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Material(
                color: Colors.transparent,
                // child: IconButton(
                //   onPressed: () {},
                //   icon: SvgPicture.asset(
                //     AppIcons.eye,
                //     width: 24,
                //   ),
                // ),
                child: Icon(
                  Icons.visibility,
                  size: 25,
                ),
              ),
            ),
          ),

          ////////////////////
          //  TextFormField(
          //       validator: Validators.password,
          //       onFieldSubmitted: (v) => onLogin(),
          //       textInputAction: TextInputAction.done,
          //       obscureText: !isPasswordShown,
          //       decoration: InputDecoration(
          //         filled: true,
          //         //fillColor: Colors.grey[200],
          //         fillColor: const Color.fromARGB(255, 207, 209, 222),

          //         contentPadding:
          //             const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          //         //remove the line under the password when write it
          //         //border: InputBorder.none,
          //         //chatgpt
          //         border: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(10),
          //           borderSide: BorderSide.none,
          //         ),
          //         suffixIcon: Material(
          //           color: Colors.transparent,
          //           child: IconButton(
          //             onPressed: onPassShowClicked,
          //             icon: Icon(
          //               isPasswordShown
          //                   ? Icons.visibility
          //                   : Icons.visibility_off,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          const SizedBox(height: AppDefaults.padding),
          const SignUpButton(),
          //const AlreadyHaveAnAccount(),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}



//////////////////
// class SignUpForm extends StatefulWidget {
//   const SignUpForm({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SignUpForm> createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   final _key = GlobalKey<FormState>();

//   bool isPasswordShown = false;
//   onPassShowClicked() {
//     isPasswordShown = !isPasswordShown;
//     setState(() {});
//   }

//   onLogin() {
//     final bool isFormOkay = _key.currentState?.validate() ?? false;
//     if (isFormOkay) {
//       Navigator.pushNamed(context, '');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Form(
//         key: _key,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Phone Field
//             const Text(
//               "Phone Number",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20,
//               ),
//             ),
//             const SizedBox(height: 8),
    
//             TextFormField(
//               keyboardType: TextInputType.number,
//               validator: Validators.requiredWithFieldName('Phone'),
//               textInputAction: TextInputAction.next,
//               decoration: InputDecoration(
//                 filled: true,
//                 //fillColor: Colors.grey[300],
//                 fillColor: const Color.fromARGB(255, 207, 209, 222),
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
    
//             const SizedBox(height: 20),
    
//             // Password Field
//             const Text(
//               "Password",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20,
//               ),
//             ),
//             const SizedBox(height: 8),
    
//             TextFormField(
//               validator: Validators.password,
//               onFieldSubmitted: (v) => onLogin(),
//               textInputAction: TextInputAction.done,
//               obscureText: !isPasswordShown,
//               decoration: InputDecoration(
//                 filled: true,
//                 //fillColor: Colors.grey[200],
//                 fillColor: const Color.fromARGB(255, 207, 209, 222),
    
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 //remove the line under the password when write it
//                 //border: InputBorder.none,
//                 //chatgpt
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//                 suffixIcon: Material(
//                   color: Colors.transparent,
//                   child: IconButton(
//                     onPressed: onPassShowClicked,
//                     icon: Icon(
//                       isPasswordShown
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
    
//             //* Forget Password labelLarge
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '');
//                 },
//                 child: const Text('Forget Password?'),
//               ),
//             ),
    
//             // Login labelLarge
//             //LoginButton(onPressed: onLogin),
//           ],
//         ),
//       ),
//     );
//   }
// }
