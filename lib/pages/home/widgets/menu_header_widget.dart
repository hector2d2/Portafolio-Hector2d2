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
    return InkWell(
      onTap: () {
        GoRouter.of(context).go(routeName);
      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          titleName,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
