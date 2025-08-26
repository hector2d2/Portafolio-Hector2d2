import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportafolio/widgets/image_circle_avatar.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class CurriculumPage extends StatelessWidget {
  const CurriculumPage({super.key});

  Future<Uint8List> captureWidgetToImage(GlobalKey key) async {
    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;
    var image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  Future<void> createPdfFromWidget(GlobalKey key) async {
    final imageBytes = await captureWidgetToImage(key);
    final pdf = pw.Document();
    final image = pw.MemoryImage(imageBytes);
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Image(image),
          );
        },
      ),
    );
    await Printing.layoutPdf(
      onLayout: (format) async => pdf.save(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey previewContainer = GlobalKey();
    return Stack(
      children: [
        RepaintBoundary(key: previewContainer, child: const PortfolioHector()),
        Positioned(
            right: 1,
            child: InkWell(
              onTap: () async {
                await createPdfFromWidget(previewContainer);
              },
              child: const CircleAvatar(
                child: Icon(
                  Icons.picture_as_pdf_rounded,
                ),
              ),
            ))
      ],
    );
  }
}

class PortfolioHector extends StatelessWidget {
  const PortfolioHector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderPortfolio(),
        LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                        'Tengo la habilidad de escuchar cuales son las necesidades y con esto plantear soluciones de automatizacion o mejorar la operacion creando o actualizando un sistema. Me gusta porque son retos y nada es imposible de hacer',
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
                        '833-236-0979',
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
                        'MAUI (7 / 10)',
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
                        'FLUTTER (9 / 10)',
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
                        'Desarrollo de aplicaciones con mi equipo de trabajo para dar soluciones a problemas de sistemas de Recursos Humanos(Control de Asistencia, Sistema de Bonos, Sistema de Tableros de Control, Plataforma Interna, Encuestas, Comunicados, entre otros)',
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
                        'Subir aplicaciones WEB / API al servidor interno con IIS y aplicaciones movil a google play',
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

class HeaderPortfolio extends StatelessWidget {
  const HeaderPortfolio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[900],
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              children: [
                SizedBox(
                  width: constraints.maxWidth * .3,
                  child: ImageCircleAvatar(
                    radius: (constraints.maxWidth * .3) / 2,
                  ),
                ),
                Container(width: constraints.maxWidth * .05),
                SizedBox(
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
    );
  }
}
