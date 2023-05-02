import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parapharm/providers/multi_provider.dart';
import 'package:parapharm/screens/AuthScreens/create_account/create_account_screen.dart';
import 'package:provider/provider.dart';


late double myFontRatio;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) {
    runApp(
      MultiProvider(
        providers: multiProviders,
        child: const MyApp(),
      ),
    );  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
          debugShowCheckedModeBanner: true,
          home: CreateAccountScreen(),
          title: 'Parapharm'
    );
  }
}
