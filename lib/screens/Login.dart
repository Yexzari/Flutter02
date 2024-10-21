import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

String? validateEmail(String? value) {
  // Expresión regular para validar un correo electrónico
  final RegExp emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  );

  if (value == null || value.isEmpty) {
    return 'Por favor, ingrese su correo electrónico';
  } else if (!emailRegExp.hasMatch(value)) {
    return 'Por favor, ingrese un correo electrónico válido';
  }
  return null; // Si es válido, no devuelve ningún error
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Por favor, ingrese su contraseña';
  }
  return null; // Si es válido, no devuelve ningún error
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordContorller = TextEditingController();
  bool _isObcure = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio de sesion'),
          foregroundColor: const Color.fromARGB(255, 251, 250, 250),
          backgroundColor: const Color.fromARGB(255, 151, 112, 195),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/logok.png",
                            width: 500,
                            height: 200,
                          ),
                          TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: "Correo electronico",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: validateEmail,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: _passwordContorller,
                            obscureText: _isObcure,
                            decoration: InputDecoration(
                                hintText: "Contraseña",
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObcure = !_isObcure;
                                      });
                                    },
                                    icon: Icon(_isObcure
                                        ? Icons.visibility
                                        : Icons.visibility_off))),
                                        validator: validatePassword,
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/EmailAddress');
                            },
                            child: const Text('Recuperar contraseña'),
                          ),
                          SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        try {
                          final credential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordContorller.text);
                          print("Credencial: ${credential}");
                          Navigator.pushReplacementNamed(context, '/Proflie');
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided for that user.');
                          }
                        }
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 151, 112, 195),
                      foregroundColor: const Color.fromARGB(255, 251, 250, 250),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      "Iniciar sesión",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/register'),
                  child: const Text(
                    "Registrarase",
                    style: TextStyle(
                      color: Color.fromARGB(255, 80, 80, 80),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                        ])))));
  }
}
