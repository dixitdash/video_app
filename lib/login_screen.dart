import 'package:flutter/material.dart';
import 'package:video_call_app/common/common_utils.dart';
import 'package:video_call_app/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: CommonUtils.image,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign in Account',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 30),
                    child: Text(
                      'Sign in to continue',
                      style: Theme.of(context).textTheme.caption,
                    ),
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

                      },
                      label: const Text('Sign in'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: FloatingActionButton.extended(
                      onPressed: () {},
                      label: Row(
                        children: [
                          Image.asset(
                            'assets/images/google_logo.png',
                            height: 35,
                          ),
                          const Text('Google'),
                        ],
                      ),
                    ),
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
