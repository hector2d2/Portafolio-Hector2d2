import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Perfil Profesional'),
        SizedBox(height: 32),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _buildInfoPersonal()),
                  SizedBox(width: 48),
                  Expanded(child: _buildHabilidades()),
                ],
              );
            } else {
              return Column(
                children: [
                  _buildInfoPersonal(),
                  SizedBox(height: 32),
                  _buildHabilidades(),
                ],
              );
            }
          },
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF3498db), width: 3),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFF2c3e50),
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

Widget _buildInfoPersonal() {
  return Container(
    padding: EdgeInsets.all(32),
    decoration: BoxDecoration(
      color: Color(0xFFF8F9FA),
      borderRadius: BorderRadius.circular(10),
      border: Border(
        left: BorderSide(color: Color(0xFF3498db), width: 4),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Información Personal',
          style: TextStyle(
            color: Color(0xFF2c3e50),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        _buildInfoItem('Email:', 'hector_tristan_dev@hotmail.com'),
        _buildInfoItem('Teléfono:', '+52 833 2360979'),
        _buildInfoItem('Ubicación:', 'Estado de México, México'),
        _buildInfoItem(
            'LinkedIn:', 'linkedin/in/hector-ricardo-tristan-mendez'),
        _buildInfoItem('GitHub:', 'github.com/hector2d2'),
        SizedBox(height: 16),
        Text(
          'Desarrollador Full Stack con más de 3 años de experiencia en el desarrollo de aplicaciones web / mobile. Especializado en JavaScript, dart, flutter, c# y bases de datos SQL/postgerssql. Apasionado por crear soluciones eficientes y escalables.',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF333333),
          ),
        ),
      ],
    ),
  );
}

Widget _buildInfoItem(String label, String value) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 16, color: Color(0xFF333333)),
        children: [
          TextSpan(
            text: label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' $value'),
        ],
      ),
    ),
  );
}

Widget _buildHabilidades() {
  List<SkillData> skills = [
    SkillData('Flutter / Angular', 0.95),
    SkillData('c# / dart', 0.90),
    SkillData('SQL / Postgresql', 0.85),
  ];

  return Container(
    padding: EdgeInsets.all(32),
    decoration: BoxDecoration(
      color: Color(0xFFF8F9FA),
      borderRadius: BorderRadius.circular(10),
      border: Border(
        left: BorderSide(color: Color(0xFF3498db), width: 4),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Habilidades Técnicas',
          style: TextStyle(
            color: Color(0xFF2c3e50),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        ...skills.map((skill) => _buildSkillItem(skill)).toList(),
      ],
    ),
  );
}

Widget _buildSkillItem(SkillData skill) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 8,
          decoration: BoxDecoration(
            color: Color(0xFFE0E0E0),
            borderRadius: BorderRadius.circular(4),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: skill.level,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3498db), Color(0xFF2980b9)],
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class SkillData {
  final String name;
  final double level;

  SkillData(this.name, this.level);
}
