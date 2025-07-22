import 'package:flutter/material.dart';
import 'package:myportafolio/pages/home/widgets/menu_header_widget.dart';
import 'package:myportafolio/routes/routername.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Container(
              height: constraints.maxHeight * .10,
              color: Colors.blue,
              child: Row(
                children: [
                  MenuHeaderWidget(
                    routeName: RouterNameApp.perfilPage,
                    titleName: 'Perfil',
                  ),
                  MenuHeaderWidget(
                    routeName: RouterNameApp.myProyectsPage,
                    titleName: 'Proyectos',
                  ),
                  MenuHeaderWidget(
                    routeName: RouterNameApp.curriculumPage,
                    titleName: 'Curriculum',
                  ),
                ],
              ),
            ),
            Container(
              height: constraints.maxHeight * .90,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(constraints.maxWidth * .09),
                  child: child,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
