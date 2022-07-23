import 'package:flutter/material.dart';
import 'package:shopping_list/screens/login_screen.dart';
import 'package:shopping_list/screens/registration_screen.dart';
import 'package:shopping_list/screens/user_screen.dart';
import 'package:shopping_list/screens/welcome_screen.dart';
import 'package:shopping_list/screens/shopping_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: ThemeData.light(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        ShoppingList.id: (context) => const ShoppingList(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        UserScreen.id: (context) => const UserScreen()
      },
    );
  }
}
