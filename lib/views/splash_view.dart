import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sharedpreftutorial/routes.dart';
import 'package:sharedpreftutorial/services/shared_preferences_service.dart';

class SplashView extends StatefulWidget {
  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  final PrefService _prefService = PrefService();

  @override
  void initState() {
    _prefService.readCache("password").then((value) {
      print(value.toString());
      if (value != null) {
        return Timer(Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(HomeRoute));
      } else {
        return Timer(Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(LoginRoute));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(
        Icons.app_blocking,
      )),
    );
  }
}
