import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String id = 'user_screen';

  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('User is logged in'),
      ),
    );
  }
}
