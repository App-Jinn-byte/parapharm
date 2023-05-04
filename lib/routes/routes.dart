import 'package:parapharm/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:parapharm/screens/splash.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String bottomNavigation = '/bottomNavigation';

  static final routes = {
    splash: (context) => const Splash(),
    bottomNavigation: (context) => const BottomNavigationScreen()
  };
}
