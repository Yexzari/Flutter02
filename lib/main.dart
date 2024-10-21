import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actividad02/screens/Code.dart';
import 'package:flutter_actividad02/screens/EmailAddress.dart';
import 'package:flutter_actividad02/screens/Login.dart';
import 'package:flutter_actividad02/screens/ResetPassword.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_actividad02/screens/create_account.dart';
import 'package:flutter_actividad02/screens/profile.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/Proflie':(context)=> const profile(),
        '/register': (context) => const CreateAccount(),
      },
    );
  }
}

