import 'package:parapharm/screens/splash.dart';

class Routes {
  static const String splash = '/splash';
  static const String signup1 = '/signup1';
  static const String signupvehicle = "/signupvehicle";
  static const String signup3 = '/signup3';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';

  static final routes = {
    splash: (context) => const Splash(),
    // signup1: (context) => const Signup1Screen(),
    // // signupvehicle: (context) => const SignUpVehicle(),
    // //signup3: (context) => const Signup3Screen(),
    // login: (context) => const LoginScreen(),
    // forgotPassword: (context) => const ForgotPasswordScreen(),
  };
}
