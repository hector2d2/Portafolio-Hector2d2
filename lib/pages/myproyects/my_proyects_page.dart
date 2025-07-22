import 'package:flutter/material.dart';
import 'package:myportafolio/pages/myproyects/widgets/card_proyect_widget.dart'; 

class MyProyectsPage extends StatelessWidget {
  const MyProyectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Proyectos En Google Play'),
        Row(
          children: [
            _miEspacioAppCard(),
            _procesosAppCard(),
          ],
        ),
      ],
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
