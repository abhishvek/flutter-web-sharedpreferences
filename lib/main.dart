import 'package:flutter/material.dart';
import 'package:sharedpreftutorial/routes.dart';
import 'package:sharedpreftutorial/views/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashRoute,
      routes: routes,
      home: LoginView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
