import 'package:flutter/material.dart';

class ProyectWidget extends StatelessWidget {
  const ProyectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(child: Image.asset('assets/images/miespacioapp.png')),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mi Espacio Sanborns',
              ),
              Text(
                'Aplicacion Movil interna con modulos para recursos humanos, de los cuales destaca: encuestas, control de asistencia por gps, credencial virtual.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
