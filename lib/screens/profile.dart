import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    foregroundColor: Colors.white,
                    child: const Text('YB'),
                  ),
                  const SizedBox(width: 8,),
                  const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Yex Bernal", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      Text("Hace 10 minutos", style: TextStyle(fontSize: 12, color: Colors.black54),),
                    ],
                  ),
                  const Spacer(), //Expanded(child: Align(child: Icon(Icons.more_vert), alignment: Alignment.centerRight,)),//tambien funciona para alinear
                  const Icon(Icons.more_vert)
                ],
              ),
            ),
            Image.asset(
              'assets/ts.jpeg',
              width: double.infinity,
              height: 400,
            ),
            const Row(
              children: [
                Icon(Icons.favorite),
                Icon(Icons.message),
                Icon(Icons.ios_share_outlined),
                Spacer(),
                Icon(Icons.save_alt)
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Datos del usuario'),
               ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ],
           ),
           SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed:()async {
                  await FirebaseAuth.instance.signOut();
                }, child: const Text('Cerrar sesión')),
                )
          ],
        ),
      ),
    );
  }
}