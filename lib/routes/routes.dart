import 'package:parapharm/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:parapharm/screens/splash.dart';

class Routes {
  static const String splash = '/';
  static const String signup1 = '/signup1';
  static const String signupvehicle = "/signupvehicle";
  static const String signup3 = '/signup3';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String bottomNavigation = '/bottomNavigation';

  static final routes = {
    splash: (context) => const Splash(),
    bottomNavigation: (context) => const BottomNavigationScreen()
    // signup1: (context) => const Signup1Screen(),
    // // signupvehicle: (context) => const SignUpVehicle(),
    // //signup3: (context) => const Signup3Screen(),
    // login: (context) => const LoginScreen(),
    // forgotPassword: (context) => const ForgotPasswordScreen(),
  };
}
