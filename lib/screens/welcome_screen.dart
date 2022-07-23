import 'package:flutter/material.dart';
import 'package:shopping_list/components/rounded_button.dart';
import 'package:shopping_list/screens/login_screen.dart';
import 'package:shopping_list/screens/registration_screen.dart';
import 'package:shopping_list/screens/shopping_list_screen.dart';
import 'package:shopping_list/components/shopping_title.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ShoppingTitle(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RoundedButton(
                      buttonText: 'Log In',
                      onClick: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                    ),
                    const SizedBox(height: 30),
                    RoundedButton(
                      onClick: () {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      },
                      buttonText: 'Register',
                    ),
                    const SizedBox(height: 30),
                    RoundedButton(
                      onClick: () {
                        Navigator.pushNamed(context, ShoppingList.id);
                      },
                      buttonText: 'Continue as guest',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
