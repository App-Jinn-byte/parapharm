
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parapharm/providers/multi_provider.dart';
import 'package:parapharm/routes/routes.dart';
import 'package:parapharm/screens/splash.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) {
    // MultiProvider(
    //   providers: [],
      child: const MyApp();
    // );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
          debugShowCheckedModeBanner: true,
          home: Splash(),
          title: 'Parapharm'
    );
  }
}
