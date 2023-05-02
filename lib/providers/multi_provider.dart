
import 'package:parapharm/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:provider/provider.dart';

final multiProviders = [
  ChangeNotifierProvider<CreateAccountProvider>(
    create: (_) => CreateAccountProvider(),
    lazy: true,
  ),
];
