import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call_app/ui/login/login_screen.dart';

import '../../infraStructure/theme/app_theme.dart';
import '../../infrastructure/common/utils/constants.dart';
import '../../infrastructure/common/utils/images.dart';
import '../common/common_widget.dart';

class SignupScreenTab extends StatefulWidget {
  const SignupScreenTab({Key? key}) : super(key: key);

  @override
  State<SignupScreenTab> createState() => _SignupScreenTabState();
}

class _SignupScreenTabState extends State<SignupScreenTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Lottie.asset(
                Images.lottieSignupLottie,
              height: MediaQuery.of(context).size.height / 3.2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Constants.signup,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.alternate_email,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: Constants.emailID,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.lock,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: Constants.password,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.lock,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: Constants.conformPassword,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    Constants.signup,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Divider(
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        Constants.or,
                      ),
                      Expanded(
                        child: Divider(
                          indent: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        Images.imGoogleLogo,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        Constants.loginWithGoogle,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      Constants.joinedUsBefore,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        Constants.login,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
