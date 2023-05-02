import 'package:parapharm/screens/custom_drawer/custom_drawer_provider.dart';
import 'package:provider/provider.dart';

final multiProviders = [
  ChangeNotifierProvider<CustomDrawerProvider>(
    create: (_) => CustomDrawerProvider(),
    lazy: true,
  ),
];
