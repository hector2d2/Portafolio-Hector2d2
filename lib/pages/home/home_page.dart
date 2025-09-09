import 'package:flutter/material.dart';
import 'package:myportafolio/pages/home/widgets/menu_navigation_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff324153),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ImageCircleAvatar(
                      radius: 150,
                    ),
                  ),
                  Text(
                    'Hector Tristán',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    'Desarrollador Full Stack',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  MenuNavigation(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
