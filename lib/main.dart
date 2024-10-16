import 'package:flutter/material.dart';
import 'package:flutter_actividad02/screens/Code.dart';
import 'package:flutter_actividad02/screens/EmailAddress.dart';
import 'package:flutter_actividad02/screens/Login.dart';
import 'package:flutter_actividad02/screens/ResetPassword.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=> const Login(),
        '/EmailAddress':(context)=> const EmailAddress(),
        '/Code':(context)=> const Code(),
        '/ResetPassword':(context)=> const ResetPassword(),
      },
    );
  }
}

