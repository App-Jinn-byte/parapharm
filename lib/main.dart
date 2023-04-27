import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parapharm/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:parapharm/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    // MultiProvider(
    //   providers: [],
    child:
    runApp(const MyApp());
    // );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationScreen(),
        title: 'Parapharm');
  }
}
