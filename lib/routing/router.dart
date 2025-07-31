import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:usw_circle_link_app_assignment/ui/view/screen/login_screen.dart';
import 'routes.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.home,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            return LoginScreen();
          },
          routes: [],
        ),
      ],
    );
