import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myportafolio/routes/routername.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({
    super.key,
  });

  @override
  State<MenuNavigation> createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32, left: 16, right: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _menuHeaderWidget(
            RouterNameApp.perfilPage,
            'Perfil',
            0,
          ),
          _menuHeaderWidget(
            RouterNameApp.myProyectsPage,
            'Proyectos',
            1,
          ),
          _menuHeaderWidget(
            RouterNameApp.curriculumPage,
            'Curriculum',
            2,
          ),
        ],
      ),
    );
  }

  Widget _menuHeaderWidget(String routeName, String titleName, int index) {
    bool isSelected = indexSelected == index;
    return InkWell(
      onTap: () {
        setState(() {
          indexSelected = index;
        });
        GoRouter.of(context).go(routeName);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.white : Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          titleName,
          style: TextStyle(
            color: isSelected ? Color(0xFF2c3e50) : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
