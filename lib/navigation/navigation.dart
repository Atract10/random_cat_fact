import 'package:flutter/material.dart';
import 'package:random_cat_fact/ui/pages/home_page.dart';
import 'package:random_cat_fact/ui/pages/history_facts_page.dart';


abstract class MainNavigationRouteNames {
  static const main = '';
  static const factsHistory = '/facts';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteNames.main;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.main: (context) => const HomePage(),
    MainNavigationRouteNames.factsHistory: (context) => const HistoryFactsList(),
  };
}
