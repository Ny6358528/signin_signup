import 'package:flutter/material.dart';
import 'package:log/views/page_one.dart';

void main() {
  runApp( signin_signup());
}

class  signin_signup extends StatefulWidget {
  const  signin_signup({super.key});

  @override
  State<signin_signup> createState() => _signin_signupState();
}

class _signin_signupState extends State<signin_signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page_one(),
    );
  }
}

