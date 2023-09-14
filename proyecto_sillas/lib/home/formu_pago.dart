import 'package:flutter/material.dart';
import 'package:proyecto_sillas/home/M_pago.dart';

// ignore: camel_case_types
class formulario_pago extends StatelessWidget {
  final metodo_pago paymentMethod;

  const formulario_pago({super.key, required this.paymentMethod});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Método de Pago'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(paymentMethod.imagePath, width: 150, height: 110),
            const SizedBox(height: 20),
            Text('Tarjeta: ${paymentMethod.name}'),
            const SizedBox(height: 20),
            // Agregar formulario de información de pago
            const PaymentInfoForm(),
          ],
        ),
      ),
    );
  }
}

class PaymentInfoForm extends StatefulWidget {
  const PaymentInfoForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentInfoFormState createState() => _PaymentInfoFormState();
}

class _PaymentInfoFormState extends State<PaymentInfoForm> {
  final _formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cvvCode = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(labelText: 'Número de Tarjeta'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa el número de tarjeta';
              }
              return null;
            },
            onSaved: (value) {
              cardNumber = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'Fecha de Vencimiento (MM/YY)'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa la fecha de vencimiento';
              }
              return null;
            },
            onSaved: (value) {
              expiryDate = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'CVV'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa el CVV';
              }
              return null;
            },
            onSaved: (value) {
              cvvCode = value!;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Los datos del formulario son válidos, puedes procesar el pago aquí
                // cardNumber, expiryDate y cvvCode contienen los datos ingresados
                // Asegúrate de manejar los datos de manera segura antes de procesar el pago.
                // ignore: avoid_print
                      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Pago procesado'),
            content: const Text('¡El pago se ha procesado con éxito!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cierra la alerta
                },
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
              }
            },
            child: const Text('Cargar tarjeta'),
          ),
        ],
      ),
    );
  }
}


// // ignore: camel_case_types
// class carritoPage extends StatefulWidget {
//   static String tag = "/DemoMWTextFieldScreen1";

//   const carritoPage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _carritoPageState createState() => _carritoPageState();
// }

// // ignore: camel_case_types
// class _carritoPageState extends State<carritoPage> {
//   bool passwordVisible = false;

//   @override
//   void initState() {
//     super.initState();
//     passwordVisible = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(

  
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Wrap(
//             runSpacing: 16,
//             children: <Widget>[
//               const SizedBox(height: 20),
//               TextField(
//                 style: const TextStyle(fontSize: 16),
//                 decoration: InputDecoration(
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                   ),
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                   ),
//                   labelText: 'Username',
//                   labelStyle: const TextStyle(fontSize: 14),
//                   filled: true,
//                 ),
//                 cursorColor: Colors.black,
//                 keyboardType: TextInputType.text,
//                 textInputAction: TextInputAction.done,
//               ),
//               TextField(
//                 style: const TextStyle(fontSize: 16),
//                 decoration: InputDecoration(
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                   ),
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                   ),
//                   labelText: "E-Mail",
//                   labelStyle: const TextStyle(fontSize: 14),
//                   prefixIcon: Icon(
//                     Icons.email,
//                     color: appStore.iconColor,
//                   ),
//                   filled: true,
//                 ),
//                 cursorColor: Colors.black,
//                 keyboardType: TextInputType.emailAddress,
//                 textInputAction: TextInputAction.done,
//               ),
//               TextField(
//                 style: const TextStyle(fontSize: 16),
//                 obscureText: passwordVisible,
//                 textInputAction: TextInputAction.done,
//                 decoration: InputDecoration(
//                     labelText: 'Password',
//                     labelStyle: const TextStyle(fontSize: 14),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                     ),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                     ),
//                     filled: true,
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         passwordVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                         color: appStore.iconColor,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           passwordVisible = !passwordVisible;
//                         });
//                       },
//                     )),
//                 cursorColor: Colors.black,
//               ),
//               TextField(
//                 style: const TextStyle(fontSize: 16),
//                 decoration: InputDecoration(
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                   ),
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: appStore.textPrimaryColor!),
//                   ),
//                   labelText: "Phone Number",
//                   labelStyle: const TextStyle(fontSize: 14),
//                   prefixIcon: const Icon(Icons.phone, color: Colors.blue),
//                   filled: true,
//                 ),
//                 cursorColor: Colors.black,
//                 keyboardType: TextInputType.number,
//                 textInputAction: TextInputAction.done,
//               ),
//               TextField(
//                 style: const TextStyle(fontSize: 16),
//                 decoration: InputDecoration(
//                   focusedBorder: UnderlineInputBorder(
//                       borderSide:
//                           BorderSide(color: appStore.textPrimaryColor!)),
//                   enabledBorder: UnderlineInputBorder(
//                       borderSide:
//                           BorderSide(color: appStore.textPrimaryColor!)),
//                   labelText: "Pincode",
//                   labelStyle: const TextStyle(fontSize: 14),
//                   filled: true,
//                   counterStyle: const TextStyle(fontSize: 14),
//                 ),
//                 maxLength: 6,
//                 cursorColor: Colors.black,
//                 keyboardType: TextInputType.number,
//                 textInputAction: TextInputAction.done,
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// AppStore appStore = AppStore();

// class AppStore {
//   Color? textPrimaryColor;
//   Color? iconColorPrimaryDark;
//   Color? scaffoldBackground;
//   Color? backgroundColor;
//   Color? backgroundSecondaryColor;
//   Color? appColorPrimaryLightColor;
//   Color? textSecondaryColor;
//   Color? appBarColor;
//   Color? iconColor;
//   Color? iconSecondaryColor;
//   Color? cardColor;

//   AppStore() {
//     textPrimaryColor = const Color(0xFF212121);
//     iconColorPrimaryDark = const Color(0xFF212121);
//     scaffoldBackground = const Color(0xFFEBF2F7);
//     backgroundColor = Colors.black;
//     backgroundSecondaryColor = const Color(0xFF131d25);
//     appColorPrimaryLightColor = const Color(0xFFF9FAFF);
//     textSecondaryColor = const Color(0xFF5A5C5E);
//     appBarColor = Colors.white;
//     iconColor = const Color(0xFF212121);
//     iconSecondaryColor = const Color(0xFFA8ABAD);
//     cardColor = const Color(0xFF191D36);
//   }
// }

