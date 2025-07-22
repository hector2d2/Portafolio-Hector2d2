import 'package:flutter/material.dart';

class CurriculumPage extends StatelessWidget {
  const CurriculumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue[900],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    Container(
                      width: constraints.maxWidth * .3,
                      child: CircleAvatar(
                        radius: (constraints.maxWidth * .3) / 2,
                        foregroundImage: Image.asset(
                          'assets/images/hectorimg.jpg',
                        ).image,
                      ),
                    ),
                    Container(width: constraints.maxWidth * .05),
                    Container(
                      width: constraints.maxWidth * .65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HECTOR TRISTAN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: constraints.maxWidth / 20,
                            ),
                          ),
                          Text(
                            'INGENIERO EN SISTEMAS COMPUTACIONALES',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: constraints.maxWidth / 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: constraints.maxWidth * .3,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text(
                        'PERFIL PERSONAL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontSize: constraints.maxWidth / 40,
                        ),
                      ),
                      Text(
                        'En mi experiencia con el departamento de Recursos Humanos, tengo la experiencia de escuchar cuales son sus necesidades y con esto plantear soluciones de automatizacion o mejorar la operacion creando o actualizando un sistema. Me gusta porque son retos y nada es imposible de hacer.',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'CONTACTO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontSize: constraints.maxWidth / 40,
                        ),
                      ),
                      Text(
                        'hector_tristan_dev@hotmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'EDUCACION',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontSize: constraints.maxWidth / 40,
                        ),
                      ),
                      Text(
                        'Universidad Autonoma de Tamaulipas',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'Ingenieria en Sistemas Computacionales',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        '2017 - 2021',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(width: constraints.maxWidth * .05),
              Container(
                width: constraints.maxWidth * .65,
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text(
                        'HABILIDADES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontSize: constraints.maxWidth / 40,
                        ),
                      ),
                      Text(
                        'GITHUB',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'SQL SERVER (9 / 10)',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'POSTGRESQL (8 / 10)',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        '.NET API (8 / 10)',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'ANGULAR (8 / 10)',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'FLUTTER (10 / 10)',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'HERRAMIENTAS INTELIGENCIA ARTIFICIAL (CHAT GPT / CLAUDE / DEEPSEEK)',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'EXPERIENCIA LABORAL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontSize: constraints.maxWidth / 40,
                        ),
                      ),
                      Text(
                        'GRUPO SANBORNS - ANALISTA PROGRAMADOR RH',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        '2022 - 2025',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'Desarrollo de aplicaciones con mi equipo de trabajo para dar soluciones a problemas de sistemas de Recursos Humanos',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'Uso de plataforma de tickets , el correo interno y telefono de oficina para la comunicacion con el personal de Recursos Humanos',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                      Text(
                        'Subir aplicaciones WEB/API al servidor interno con IIS y aplicaciones movil a google play',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: constraints.maxWidth / 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        })
      ],
    );
  }
}
