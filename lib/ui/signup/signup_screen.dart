import 'package:flutter/material.dart';
import 'package:video_call_app/common/common_utils.dart';
import 'package:video_call_app/ui/login/login_screen.dart';

import '../../infraStructure/theme/app_theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CommonUtils.image,
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration:  BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create an account',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 30),
                    child: Text(
                      'Sign up to continue',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  Text(
                    'NAME',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 20, bottom: 20),
                    child: TextFormField(),
                  ),
                  Text(
                    'EMAIL',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 20, bottom: 20),
                    child: TextFormField(),
                  ),
                  Text(
                    'PASSWORD',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 20, bottom: 20),
                    child: TextFormField(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      label:  Text('Sign up',style: Theme.of(context).textTheme.button,),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: FloatingActionButton.extended(
                      backgroundColor: AppTheme.darkPrimaryColor,
                      onPressed: () {},
                      label: Row(
                        children: [
                          Image.asset(
                            'assets/images/google_logo.png',
                            height: 35,
                          ),
                           Text('Google',style: Theme.of(context).textTheme.button,),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
