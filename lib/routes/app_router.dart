import 'package:financeapp/models/plan.dart';
import 'package:financeapp/pages/detail_page.dart';
import 'package:financeapp/pages/home_page.dart';
import 'package:financeapp/pages/onboarding_page.dart';

import 'package:financeapp/pages/profile_page.dart';
import 'package:financeapp/pages/test.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => OnBoardingPage()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final plan = state.extra as Plan;
        return DetailPage(plan: plan);
      },
    ),
    GoRoute(path: '/profile', builder: (context, state) => ProfilePage()),
  ],
);
