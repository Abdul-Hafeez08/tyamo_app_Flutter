import 'package:flutter/material.dart';
import 'package:tyamo_app/Views/Auth/forgot_password.dart';
import 'package:tyamo_app/Views/invitation/accept_invite.dart';
import 'package:tyamo_app/Views/invitation/invite_friend.dart';
import 'package:tyamo_app/Views/profile/profile_setup.dart';

import 'Views/Auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tyamo App',
      home: AcceptInvite(),
    );
  }
}
