import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 

class MenuHeaderWidget extends StatelessWidget {
  const MenuHeaderWidget({
    super.key,
    required this.routeName,
    required this.titleName,
  });

  final String routeName;
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).go(routeName);
        },
        child: Text(
          titleName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
