import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myportafolio/routes/routerapp.dart';
import 'package:myportafolio/routes/routername.dart';

class CardProyectWidget extends StatelessWidget {
  const CardProyectWidget({
    super.key,
    required this.pathImg,
    required this.titleName,
    required this.subTitleName,
  });

  final String pathImg;
  final String titleName;
  final String subTitleName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).go(RouterNameApp.contentProyectPage);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                child: Image.asset(
                  pathImg,
                  height: 300,
                  width: 500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 4,
                    child: Image.asset(
                      pathImg,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleName,
                      ),
                      Text(
                        subTitleName,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
