import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_chat/screens/auth/sign_in_page.dart';
import 'package:my_chat/utils/navigation/custom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Timer(const Duration(seconds: 3), () {
      CustomNavigation.nextPage(context, const SignInPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              size: 100,
              color: Colors.amber.shade800,
            ),
            Text(
              "My Chat",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.amber.shade800),
            )
          ],
        ),
      ),
    );
  }
}
