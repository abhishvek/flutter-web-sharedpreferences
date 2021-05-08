import 'package:flutter/material.dart';
import 'package:sharedpreftutorial/routes.dart';
import 'package:sharedpreftutorial/services/shared_preferences_service.dart';
import 'package:sharedpreftutorial/views/login_view.dart';

class HomeView extends StatelessWidget {
  final PrefService _prefService = PrefService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            ElevatedButton(
                onPressed: () async {
                  await _prefService.removeCache("password").whenComplete(() {
                    Navigator.of(context).pushNamed(LoginRoute);
                  });
                },
                child: Text("Log out"))
          ],
        ),
      ),
    );
  }
}
