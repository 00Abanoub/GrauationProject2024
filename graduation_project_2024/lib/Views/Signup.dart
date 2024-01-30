import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project_2024/components/icons_View.dart';
import 'package:graduation_project_2024/components/components.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var FormKey = GlobalKey<FormState>();
  bool isPassword = false;
  bool isPressedSVG = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              //! to validation input data in text filed
              child: Form(
                key: FormKey,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Color.fromARGB(255, 22, 117, 138),
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
      
                    const SizedBox(
                      height: 50,
                    ),
                    defaultTextFormFiled(
                        //controller: emailController,
                        type: TextInputType.emailAddress,
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        labelText: " Enter your name",
                        prefixIcon: Icons.person),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultTextFormFiled(
                        //controller: emailController,
                        type: TextInputType.emailAddress,
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                        labelText: "Email Address",
                        prefixIcon: Icons.email),
      
                    const SizedBox(
                      height: 20,
                    ),
      
                    defaultTextFormFiled(
                      //controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      labelText: "password",
                      prefixIcon: Icons.lock,
                      //* to make eye show password when pressed it make isPassword false
                      //? How fetch the value to change it when you pressed ?!
                      // save the value taken from components a variable to use in this view
                      //that variable make me changes the value from components normally
      
                      isPassword: isPassword,
                      //? How can set state for pressed ?! we must replace stateless to stateful widget.
                      suffixPressed: () {
                        setState(() {
                          // this make the value changes every pressed
                          // false   => true and vice versa (el3ks sa7e7 lol)
                          isPassword = !isPassword;
                        });
                      },
                      suffixIcon: Icons.remove_red_eye,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultTextFormFiled(
                      //controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your confirm password';
                        }
                        return null;
                      },
                      labelText: "Confirm password",
                      prefixIcon: Icons.lock,
                      //* to make eye show password when pressed it make isPassword false
                      //? How fetch the value to change it when you pressed ?!
                      // save the value taken from components a variable to use in this view
                      //that variable make me changes the value from components normally
      
                      isPassword: isPassword,
                      //? How can set state for pressed ?! we must replace stateless to stateful widget.
                      suffixPressed: () {
                        setState(() {
                          // this make the value changes every pressed
                          // false   => true and vice versa (el3ks sa7e7 lol)
                          isPassword = !isPassword;
                        });
                      },
                      suffixIcon: Icons.remove_red_eye,
                    ),
      
                    const SizedBox(
                      height: 40,
                    ),
      
                    //* Button submit login
                    defaultButton(
                      width: double.infinity,
                      background: Colors.blue,
                      function: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (FormKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      text: " Sign in ",
                      isUpperCase: false,
                      radius: 10.0,
                    ),
      
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Column(
                      children: [
                        Text(
                          'contact us',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
      
                        // Row of show SVG
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Expanded(
                        //       child: MaterialButton(
                        //         onPressed: () {},
                        //         child: Container(
                        //           //margin: EdgeInsets.only(right: 8),
                        //           width: 65.0,
                        //           height: 70.0,
                        //           decoration: BoxDecoration(
                        //             color: Color(0xffECECEC),
                        //             borderRadius: BorderRadius.circular(10.0),
                        //           ),
                        //           child: SvgPicture.asset(
                        //             'assets/SVG/google2424.svg',
                        //             height: 50.0,
                        //             width: 30.0,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //       child: MaterialButton(
                        //         onPressed: () {},
                        //         child: Container(
                        //           width: 65.0,
                        //           height: 70.0,
                        //           // margin: EdgeInsets.only(right: 8),
                        //           decoration: BoxDecoration(
                        //             color: Color(0xffECECEC),
                        //             borderRadius: BorderRadius.circular(10.0),
                        //           ),
                        //           child: SvgPicture.asset(
                        //             'assets/SVG/facebook.svg',
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //       child: MaterialButton(
                        //         onPressed: () {},
                        //         child: Container(
                        //           width: 65.0,
                        //           height: 70.0,
                        //           // margin: EdgeInsets.only(right: 18),
                        //           decoration: BoxDecoration(
                        //             color: Color(0xffECECEC),
                        //             borderRadius: BorderRadius.circular(10.0),
                        //           ),
                        //           child: SvgPicture.asset(
                        //             'assets/SVG/instagramblack.svg',
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //       child: MaterialButton(
                        //         onPressed: () {},
                        //         child: Container(
                        //           width: 65.0,
                        //           height: 70.0,
                        //           //margin: EdgeInsets.only(right: 8),
                        //           decoration: BoxDecoration(
                        //             color: Color(0xffECECEC),
                        //             borderRadius: BorderRadius.circular(10.0),
                        //           ),
                        //           child: SvgPicture.asset(
                        //             'assets/SVG/twitter.svg',
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
      
                        Center(
                          child: Wrap(
                            spacing: 1.0,
                            runSpacing: 2.0,
                            children: [
                              IconWidget(
                                icon: FontAwesomeIcons.facebookF,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 4),
                              IconWidget(
                                icon: FontAwesomeIcons.twitter,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(width: 4),
                              IconWidget(
                                icon: FontAwesomeIcons.google,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 4),
                              IconWidget(
                                icon: FontAwesomeIcons.linkedinIn,
                                color: Colors.purpleAccent,
                              ),
                              SizedBox(width: 4),
                              IconWidget(
                                icon: FontAwesomeIcons.instagram,
                                color: Colors.tealAccent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
