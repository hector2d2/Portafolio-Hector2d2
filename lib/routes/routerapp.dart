import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myportafolio/pages/curriculum/curriculum_page.dart';
import 'package:myportafolio/pages/home/home_page.dart';
import 'package:myportafolio/pages/myproyects/my_proyects_page.dart';
import 'package:myportafolio/pages/myproyects/widgets/proyect_widget.dart';
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
              path: RouterNameApp.contentProyectPage,
              builder: (BuildContext context, GoRouterState state) {
                return const ProyectWidget();
              },
            ),
            GoRoute(
              path: RouterNameApp.curriculumPage,
              builder: (BuildContext context, GoRouterState state) {
                return const CurriculumPage();
              },
            ),
          ],
          builder: (context, state, child) {
            print(state.uri);
            print(RouterNameApp.contentProyectPage);
            if (state.uri.path == RouterNameApp.contentProyectPage) {
              print('paso aqui');
              return ProyectWidget();
            } else
              return HomePage(child: child);
          }),
    ],
  );
}
