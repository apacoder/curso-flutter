import 'package:examples/curso/2_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    // MenuOption(
    //   route: 'home',
    //   icon: Icons.home,
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    // ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'Lista tipo 1',
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'Lista tipo 2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_rounded,
      name: 'Alertas',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.credit_card,
      name: 'Tarjetas',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Avatar screen',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.animation,
      name: 'Animated screen',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.text_fields,
      name: 'Input screen',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.settings_ethernet_sharp,
      name: 'Sliders',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listviewbuilder',
      icon: Icons.swap_vert_circle_outlined,
      name: 'Infinite Scroll & Pull to refresh',
      screen: const ListViewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
