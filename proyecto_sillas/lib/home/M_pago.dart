import 'package:flutter/material.dart';
import 'package:proyecto_sillas/home/formu_pago.dart';

// ignore: camel_case_types
class metodo_pago {
  final String name;
  final String imagePath;

  metodo_pago({required this.name, required this.imagePath});
}

List<metodo_pago> paymentMethods = [
  metodo_pago(name: 'PayPal', imagePath: 'assets/pagos/paypal.png'),
  metodo_pago(name: 'Visa', imagePath: 'assets/pagos/visa.png'),
  metodo_pago(name: 'MasterCard', imagePath: 'assets/pagos/mastercard.png'),
// esto tiene que ir abajo
  metodo_pago(
      name: 'american express', imagePath: 'assets/pagos/amercan_express.jfif'),
  metodo_pago(name: 'davivienda', imagePath: 'assets/pagos/davivienda.png'),
  // metodo_pago(name: 'BBVA', imagePath: 'assets/pagos/bbva.png'),
];

// ignore: camel_case_types
class metododepago extends StatelessWidget {
  const metododepago({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cargar método de pago'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: paymentMethods
              .map(
                (paymentMethod) =>
                    _buildPaymentMethodContainer(context, paymentMethod),
              )
              .toList(),
        ),
      ),
    );
  }

  void _navigateToOtherView(BuildContext context, metodo_pago paymentMethod) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => formulario_pago(paymentMethod: paymentMethod),
      ),
    );
  }

  Widget _buildPaymentMethodContainer(
      BuildContext context, metodo_pago paymentMethod) {
    return GestureDetector(
      onTap: () {
        _navigateToOtherView(
            context, paymentMethod); // Abre el formulario de pago
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Image.asset(paymentMethod.imagePath, width: 150, height: 110),
      ),
    );
  }
}
