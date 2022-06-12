import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'listView1', name: 'ListView tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listView2', name: 'ListView tipo 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'Alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'Card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card_outlined),
    MenuOption(route: 'Avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'Animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'Slider', name: 'Slider && Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'Listview Builder', name: 'Infinite Scrool & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined)
  ];
    
  static Map<String, Widget Function(BuildContext)> getAppRoutes () {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
      appRoutes.addAll({'home': ( BuildContext context ) => const HomeScreen() });
      for (final option in menuOptions) {
        appRoutes.addAll({ option.route : (BuildContext context) => option.screen});
      }

    return appRoutes;

  }

  // static Map<String, Widget Function(BuildContext)> routes = {

  //   'home'      : (BuildContext context) => const HomeScreen(),
  //   'listView1' : (BuildContext context) => const Listview1Screen(),
  //   'listView2' : (BuildContext context) => const Listview2Screen(),
  //   'Alert'     : (BuildContext context) => const AlertScreen(),
  //   'Card'      : (BuildContext context) => const CardScreen(),

  // };

  static Route<dynamic> onGenerateRoute ( RouteSettings settings) { 
        
        return MaterialPageRoute(
              builder: (context) => const AlertScreen(),
              );
      }

}