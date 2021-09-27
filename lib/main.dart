import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'themes/theme.dart';
import 'config/routes.dart' as route;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const BifNewsApp());
}

class BifNewsApp extends StatelessWidget {
  const BifNewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BiF News',
      theme: themeData,
      onGenerateRoute: route.controller,
      initialRoute: route.homePage,
    );
  }
}
