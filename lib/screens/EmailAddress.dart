import 'package:flutter/material.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
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

class _EmailAddressState extends State<EmailAddress> {
    final TextEditingController _emailController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Verficicacion de correo'),
            foregroundColor: const Color.fromARGB(255, 251, 250, 250),
            backgroundColor: const Color.fromARGB(255, 151, 112, 195),
        ),
        body: Center(
            child:Padding(
                padding: const EdgeInsets.all(32.0),
                child:Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                            Image.asset(
                                "assets/logok.png",
                                width: 400,
                                height: 200,
                            ),
                            TextFormField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                    hintText: "Correo electronico",
                                    label: Text("Correo electronico"),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: validateEmail,
                            ),

                            const SizedBox(
                                height: 64,
                            ),
                            SizedBox(
                                height: 48,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                         Navigator.pushNamed(context,'/Code');
                                    }
                                    },
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: const Color.fromARGB(255, 251, 250, 250),
                                        backgroundColor: const Color.fromARGB(255, 151, 112, 195),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16))),
                                    child: const Text(
                                    "Enviar correo",
                                    style: TextStyle(fontSize: 20),
                                    ),
                                ),
                            ),
                        ]
                    )
                )
            )
        )
        );
    }
}
