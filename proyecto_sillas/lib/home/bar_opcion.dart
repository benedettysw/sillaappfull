// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'peril.dart';
import 'M_pago.dart';
import 'home.dart';
// import 'prueba.dart';

// import 'prueba.dart';

class bar_opcionPage extends StatefulWidget {
  const bar_opcionPage({super.key});
  @override
  State<bar_opcionPage> createState() => _baropcionPageState();
}

class _baropcionPageState extends State<bar_opcionPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  GlobalKey<NavigatorState> menuNavigatorKey = GlobalKey<NavigatorState>();

  List widgets = <Widget>[
    const Center(
      child: DemoMWAppBarScreen(),
    ),
    // Center(
    //   child: CartScreen(
    //     selectedProducts: const [],  // Aquí debes proporcionar la lista de productos seleccionados
    //     removeFromCart: (product) {},  // Aquí debes proporcionar la función removeFromCart
    //   ),
    // ),
    const Center(
      child: metododepago(),
    ),
    const Center(child: ProfilePage()),
  ];

  List<IconData> navbarIcons = [
    Icons.home,
    // Icons.shopping_cart,
    Icons.payment, // Cambiar el ícono
    Icons.account_circle,
  ];

  List<String> bottomNavigationName = [
    'Home',
    // 'Cart',
    'Checkout',
    'Profile'
  ]; // Agregar 'Cart' y 'Checkout'

  List<Color> color = [
    Colors.blue,
    Colors.orange,
    Colors.purple,
  ];

  List<Color> colorShade = [
    Colors.blue.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 16, left: 30, right: 35, top: 8),
        height: 70,
        decoration: BoxDecoration(color: appStore.cardColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navbarIcons.map(
            (e) {
              int i = navbarIcons.indexOf(e);
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                padding: const EdgeInsets.all(8),
                height: 45,
                decoration: BoxDecoration(
                  color:
                      i == selectedIndex ? colorShade[i] : appStore.cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        child: Icon(
                          e,
                          size: 30,
                          color: i == selectedIndex
                              ? color[i]
                              : Colors.blueGrey[300],
                        ),
                        onTap: () {
                          selectedIndex = i;
                          setState(() {});
                        }),
                    (i == selectedIndex)
                        ? Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(bottomNavigationName[i],
                                style: TextStyle(
                                    color: color[i],
                                    fontWeight: FontWeight.bold)))
                        : Container(),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

AppStore appStore = AppStore();

class AppStore {
  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore() {
    textPrimaryColor = const Color(0xFF212121);
    iconColorPrimaryDark = const Color(0xFF212121);
    scaffoldBackground = const Color(0xFFEBF2F7);
    backgroundColor = Colors.black;
    backgroundSecondaryColor = const Color(0xFF131d25);
    appColorPrimaryLightColor = const Color(0xFFF9FAFF);
    textSecondaryColor = const Color(0xFF5A5C5E);
    appBarColor = Colors.white;
    iconColor = const Color(0xFF212121);
    iconSecondaryColor = const Color(0xFFA8ABAD);
    cardColor = const Color(0xFF191D36);
  }
}
