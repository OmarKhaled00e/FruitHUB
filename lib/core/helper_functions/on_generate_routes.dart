import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hub/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => BestSellingView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => HomeView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => SignupView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => SigninView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
