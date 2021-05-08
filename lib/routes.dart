import 'package:sharedpreftutorial/views/home_view.dart';
import 'package:sharedpreftutorial/views/login_view.dart';
import 'package:sharedpreftutorial/views/splash_view.dart';

const String SplashRoute = "/splash";
const String HomeRoute = "/home";
const String LoginRoute = "/login";

final routes = {
  SplashRoute: (context) => SplashView(),
  HomeRoute: (context) => HomeView(),
  LoginRoute: (context) => LoginView()
};
