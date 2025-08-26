import 'package:flutter/material.dart';
import 'package:myportafolio/pages/home/widgets/menu_header_widget.dart';
import 'package:myportafolio/routes/routername.dart';
import 'package:myportafolio/widgets/image_circle_avatar.dart';

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
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff324153),
                ),
                width: constraints.maxWidth,
                child: Column(
                  children: [
                    ImageCircleAvatar(
                      radius: (constraints.maxWidth * .3) / 4,
                    ),
                    Text(
                      'Hector Tristán',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth / 40,
                      ),
                    ),
                    Text(
                      'Desarrollador Full Stack',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth / 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      height: constraints.maxHeight * .10,
                      color: Color(0xff485565),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * .09,
                    vertical: constraints.maxHeight * .05,
                  ),
                  child: child,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
