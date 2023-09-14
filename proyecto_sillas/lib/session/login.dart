import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'login_registro.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  // _LoginPageState createState() => _LoginPageState();
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

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
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
              // este es el widgets de el texxto logins
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Login ',
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),

//
//
              const SizedBox(height: 40),
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
                        fillColor: const Color.fromARGB(255, 169, 168, 168),
                        labelText: 'usuario',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
//
//
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
                        fillColor: const Color.fromARGB(255, 169, 168, 168),
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              // aqui comienza en boton de iniciar secion
              const SizedBox(height: 65),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _submitForm();
                    Navigator.pushNamed(context, "/bar_option");
                    // aqui va lo que yo quiera hacerle al boton
                  },
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 118, 137, 153),
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(fontSize: 18),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text('iniciar secion'),
                ),
              ),

              // aqui comienza el codigo del boton de registrar
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // aqui va lo que yo quiera hacerle al boton
                    _submitForm();

                    Navigator.pushNamed(context, "/registro");
                  },
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(fontSize: 18),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text('registrar'),
                ),
              ),

              // esto es para acomodar las rutas
              const SizedBox(height: 20),
             
            ],
          ),
        ),
      ),
    );
  }
}
