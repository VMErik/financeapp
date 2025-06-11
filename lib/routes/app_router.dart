import 'package:financeapp/pages/home_page.dart';
import 'package:financeapp/pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => OnBoardingPage(),),
  GoRoute(path: '/home', builder: (context, state) => HomePage(),),
]);