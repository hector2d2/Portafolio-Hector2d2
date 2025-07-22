import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myportafolio/pages/curriculum/curriculum_page.dart';
import 'package:myportafolio/pages/home/home_page.dart';
import 'package:myportafolio/pages/myproyects/my_proyects_page.dart';
import 'package:myportafolio/pages/perfil/perfil_page.dart';
import 'package:myportafolio/routes/routername.dart';

class RouterApp {
  static GoRouter router = GoRouter(
    initialLocation: RouterNameApp.perfilPage,
    routes: <RouteBase>[
      ShellRoute( 
        routes: <RouteBase>[
          GoRoute(
            path: RouterNameApp.perfilPage,
            builder: (BuildContext context, GoRouterState state) {
              return const PerfilPage();
            },
          ),
          GoRoute(
            path: RouterNameApp.myProyectsPage,
            builder: (BuildContext context, GoRouterState state) {
              return const MyProyectsPage();
            },
          ),
          GoRoute(
            path: RouterNameApp.curriculumPage,
            builder: (BuildContext context, GoRouterState state) {
              return const CurriculumPage();
            },
          ),
        ],
        builder: (context, state, child) => HomePage(child: child),
      ),
    ],
  );
}
