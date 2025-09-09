import 'package:flutter/material.dart';
import 'package:myportafolio/pages/myproyects/widgets/card_proyect_widget.dart';

class MyProyectsPage extends StatelessWidget {
  const MyProyectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Proyectos En Google Play',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            if (constraints.maxWidth > 800)
              Row(
                children: [
                  Expanded(child: _miEspacioAppCard()),
                  Expanded(child: _procesosAppCard()),
                ],
              )
            else
              Column(
                children: [
                  _miEspacioAppCard(),
                  _procesosAppCard(),
                ],
              ),
          ],
        );
      },
    );
  }

  Widget _miEspacioAppCard() => const CardProyectWidget(
        pathImg: 'assets/images/miespacioapp.png',
        titleName: 'Mi Espacio Sanborns',
        subTitleName: 'Aplicacion Interna Para Recursos Humanos',
      );

  Widget _procesosAppCard() => const CardProyectWidget(
        pathImg: 'assets/images/procesosapp.png',
        titleName: 'Procesos App',
        subTitleName: 'Aplicacion Interna Para Recursos Humanos',
      );
}
