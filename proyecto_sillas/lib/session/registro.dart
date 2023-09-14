// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class registroPage extends StatefulWidget {
  const registroPage({super.key});

  @override
  State<registroPage> createState() => _registroPageState();
}

class _registroPageState extends State<registroPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 1),
              // Agrega la imagen aquí
              Image.asset(
                "assets/icons/icono.png", // Ruta de la imagen dentro de los assets
                height: 100,
                width: 100,
                // Aquí puedes ajustar el tamaño de la imagen según tus necesidades
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Edenesca \n     S.A',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
              // este es el widgets de el texxto logins
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  '¡Crear cuenta! ',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),

//
//
              const SizedBox(height: 70),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingrese su usuario';
                      }
                      return null;
                    },
                    //       onChanged: (value) {
                    //   setState(() {
                    //     // _password = value;
                    //   });
                    // },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 202, 200, 200),
                        labelText: 'usuario',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
//
//
// aqui va el de email
              const SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'por favor, ingrese su Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 202, 200, 200),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),

              // aqui va el de contraseña

              const SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'por favor, ingrese su contraseña';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 202, 200, 200),
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),

              // aqui comienza el codigo del boton de registrar
              const SizedBox(height: 50),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // aqui va lo que yo quiera hacerle al boton
                    // _submitForm();
                  },
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: const Color.fromARGB(255, 255, 170, 0),
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(fontSize: 18),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text('registrar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
