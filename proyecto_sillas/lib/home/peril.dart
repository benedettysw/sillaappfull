import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefonolController = TextEditingController();
  // final TextEditingController _otherFieldController =
  //     TextEditingController(); // Agregado

  bool _isEditing = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _telefonolController.dispose(); // Agregado
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isEditing = !_isEditing;
              });
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Center(
        // Centrar los elementos verticalmente
        child: SingleChildScrollView(
          // Desplazamiento si los elementos no caben
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/icons/descarga.jfif'),
              ),
              const SizedBox(height: 20),
              _isEditing
                  ? TextFormField(
                      controller: _nameController,
                      decoration:
                          const InputDecoration(labelText: 'Nombre de Usuario'),
                    )
                  : const Text(
                      'edwin0909',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              const SizedBox(height: 10),
              _isEditing
                  ? TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          labelText: 'Correo electrónico'),
                    )
                  : const Text(
                      'Correo electrónico: edwin@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
              const SizedBox(height: 10),
              _isEditing
                  ? TextFormField(
                      controller: _telefonolController,
                      decoration: const InputDecoration(labelText: 'telefono'),
                    )
                  : const Text(
                      '3245695544',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
              const SizedBox(height: 20),
              _isEditing
                  ? ElevatedButton(
                      onPressed: () {
                        // Lógica para guardar los cambios
                        setState(() {
                          _isEditing = false;
                        });
                      },
                      child: const Text('Guardar cambios'),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isEditing = true;
                          _nameController.text = 'edwin0909';
                          _emailController.text = 'edwin@gmail.com';
                          _telefonolController.text = '3245695544';
                        });
                      },
                      child: const Text('Editar perfil'),
                    ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                  // Lógica para cerrar sesión
                },
                child: const Text('Cerrar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
