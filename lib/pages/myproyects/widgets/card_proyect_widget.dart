import 'package:flutter/material.dart';

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
    return Container(
      height: 500,
      width: 500,
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
          SizedBox(
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
    );
  }
}
