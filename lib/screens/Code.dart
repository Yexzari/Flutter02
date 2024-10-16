import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Code extends StatefulWidget {
  const Code({super.key});

  @override
  State<Code> createState() => _CodeState();
}

String? validateCode(String? value) {
  if (value == null || value.isEmpty) {
    return 'Por favor, ingrese su código';
  }

  final int? code = int.tryParse(value);

  if (code == null || code <= 0) {
    return 'Por favor, ingrese un código válido';
  }

  return null; 
}


class _CodeState extends State<Code> {
  final TextEditingController _codeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Código de verificación'),
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
                  decoration: const InputDecoration(labelText: "Ingresa tu código de verificación"),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  controller: _codeController,
                  validator: validateCode,
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
                        Navigator.pushNamed(context, '/ResetPassword');
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 251, 250, 250),
                      backgroundColor: const Color.fromARGB(255, 151, 112, 195),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      "Confirmar código",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
