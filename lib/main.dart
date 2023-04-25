
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parapharm/providers/multi_provider.dart';
import 'package:parapharm/routes/routes.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
      // providers: multiProviders,
    return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splash,
          title: 'Parapharm'
      // ),
    );
  }
}
