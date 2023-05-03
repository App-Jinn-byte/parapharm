import 'package:parapharm/screens/custom_drawer/custom_drawer_provider.dart';

import 'package:parapharm/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:provider/provider.dart';

final multiProviders = [
  ChangeNotifierProvider<CreateAccountProvider>(
    create: (_) => CreateAccountProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<CustomDrawerProvider>(
    create: (_) => CustomDrawerProvider(),
    lazy: true,
  ),
];
